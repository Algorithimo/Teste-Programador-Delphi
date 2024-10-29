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

        -- Exclua todos os lan�amentos associados ao pedido
        DELETE FROM TB_PEDIDO_ITEM
        WHERE ID_PEDIDO_VENDA = @ID_PEDIDO_VENDA

        COMMIT TRANSACTION

        -- Retorne a mensagem de sucesso
        DECLARE @Mensagem nvarchar(50) = 'Lan�amentos removidos com sucesso'
        SELECT @Mensagem AS Mensagem

    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION

        -- Declare a vari�vel @Erro e atribua o erro
        DECLARE @Erro nvarchar(200)
        SET @Erro = ERROR_MESSAGE()  -- Corre��o aqui: remove a string ao redor da fun��o

        -- Retorne a mensagem de erro
        SELECT @Erro AS Erro
    END CATCH
END
GO