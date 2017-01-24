CREATE OR REPLACE TYPE dz_swagger_definition_typ FORCE
AUTHID CURRENT_USER 
AS OBJECT (
    versionid            VARCHAR2(40 Char)
   ,definition           VARCHAR2(255 Char)
   ,definition_type      VARCHAR2(255 Char)
   ,definition_desc      VARCHAR2(4000 Char)
   ,inline_def           VARCHAR2(5 Char)
   ,swagger_properties   dz_swagger_property_list
   ,dummy                INTEGER

   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   ,CONSTRUCTOR FUNCTION dz_swagger_definition_typ
    RETURN SELF AS RESULT
    
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   ,CONSTRUCTOR FUNCTION dz_swagger_definition_typ(
       p_definition           IN  VARCHAR2
      ,p_definition_type      IN  VARCHAR2
      ,p_definition_desc      IN  VARCHAR2
      ,p_inline_def           IN  VARCHAR2
      ,p_versionid            IN  VARCHAR2
   ) RETURN SELF AS RESULT
   
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   ,CONSTRUCTOR FUNCTION dz_swagger_definition_typ(
       p_definition           IN  VARCHAR2
      ,p_definition_type      IN  VARCHAR2
      ,p_definition_desc      IN  VARCHAR2
      ,p_inline_def           IN  VARCHAR2
      ,p_versionid            IN  VARCHAR2
      ,p_swagger_properties   IN  dz_swagger_property_list
   ) RETURN SELF AS RESULT
    
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   ,MEMBER FUNCTION toJSON(
      p_pretty_print      IN  NUMBER   DEFAULT NULL
   ) RETURN CLOB
    
   -----------------------------------------------------------------------------
   -----------------------------------------------------------------------------
   ,MEMBER FUNCTION toYAML(
      p_pretty_print      IN  NUMBER   DEFAULT 0
   ) RETURN CLOB

);
/

GRANT EXECUTE ON dz_swagger_definition_typ TO public;

