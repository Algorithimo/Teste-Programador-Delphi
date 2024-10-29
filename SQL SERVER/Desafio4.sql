IF (SELECT COUNT(*) FROM SYSOBJECTS WHERE (xtype = 'fn' OR xtype = 'tf' OR xtype = 'if') AND name = 'fn_PedidosCliente') > 0 
BEGIN
	DROP FUNCTION fn_PedidosCliente
END
GO
CREATE FUNCTION fn_PedidosCliente
(
    @ID_CLIENTE bigint
)
RETURNS TABLE
AS
RETURN
(
    SELECT 
        P.ID_PEDIDO_VENDA AS IDPedido,
        P.DAT_EMISSAO AS DataPedido,
        PR.NOM_PRODUTO AS Produto,
        PI.QTD_ITEM AS Quantidade,
        PI.VAL_UNITARIO AS PrecoUnitario,
        (PI.QTD_ITEM * PI.VAL_UNITARIO) AS Subtotal
    FROM 
        TB_PEDIDO P
    INNER JOIN 
        TB_PEDIDO_ITEM PI ON P.ID_PEDIDO_VENDA = PI.ID_PEDIDO_VENDA
    INNER JOIN 
        TB_PRODUTO PR ON PI.ID_PRODUTO = PR.ID_PRODUTO
    WHERE 
        P.ID_CLIENTE = @ID_CLIENTE
)
GO

SELECT * FROM dbo.fn_PedidosCliente( 1)