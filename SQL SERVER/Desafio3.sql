IF (SELECT COUNT(*) FROM SYSOBJECTS WHERE xtype = 'P' AND name = 'sp_ExcluirLancamentosPedido') > 0 
BEGIN
	DROP PROCEDURE sp_ExcluirLancamentosPedido
END
GO
CREATE PROCEDURE sp_ExcluirLancamentosPedido
    @ID_PEDIDO_VENDA bigint
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION

    
        DELETE FROM TB_PEDIDO_ITEM
        WHERE ID_PEDIDO_VENDA = @ID_PEDIDO_VENDA

        COMMIT TRANSACTION

        DECLARE @Mensagem nvarchar(50) = 'Lançamentos removidos com sucesso'
        SELECT @Mensagem AS Mensagem

    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION

        DECLARE @Erro nvarchar(200)
        SET @Erro = ERROR_MESSAGE() 

        SELECT @Erro AS Erro
    END CATCH
END
GO