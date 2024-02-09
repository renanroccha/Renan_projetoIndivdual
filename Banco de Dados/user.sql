-- criar usuario empresario
create user 'empresario'@'localhost'
        identified by 'basquete';
        
-- permissoes de usuario
-- permitir apenas select
grant select on sprint01.*
  to 'empresario'@'localhost';
  
  -- confirmar as permissoes
flush privileges;
  
  -- retirar permissoes 
  revoke select on sprint01.*
     from 'empresario'@'localhost';
     
flush privileges;
     
     -- permitir todos os comandos
     grant ALL privileges on sprint01.*
       to 'empresario'@'localhost';
       
flush privileges;

       -- excluir usuario
     --  drop user 'empresario'@'localhost';