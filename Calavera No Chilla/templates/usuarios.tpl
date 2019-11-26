{include file='header.tpl'}
<h2>Usuarios-Administradores</h2>
{if isset($username)} 
    
    <table>
        {foreach $usuarios as $usuario}
            <tr>
                <td>
                    {$usuario->nombre} {$usuario->usuario_admin}
                </td> 
                <td>
                    <form action="agregarComoAdmin/{$usuario->id_usuario}">
                        <select name="">
                            <option value="0">Usuario</option>
                            <option value="1">Administrador</option>
                            
                        </select>
                        <button type="submit" href="agregarComoAdmin/{$usuario->id_usuario}">Administrador</button>
                    </form>
                </td>                
                <td>
                    <a href="eliminarUsuario/{$usuario->id_usuario}">Eliminar</a>
                </td>
            </tr>
        {/foreach}
    </table>
                            
{/if}

{include file='footer.tpl'}

