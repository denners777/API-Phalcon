--------------------------------------------------------
--  DDL for Table EMPRESA
--------------------------------------------------------

  CREATE TABLE "CNAB"."EMPRESA" 
   (	"ID_EMPRESA" NUMBER, 
	"DS_DESCRICAO" VARCHAR2(105 BYTE), 
	"CD_COLIGADA" NUMBER, 
	"DS_NOME_FANTASIA" VARCHAR2(105 BYTE), 
	"CD_COD_PROTHEUS" VARCHAR2(20 BYTE), 
	"CD_LOJA_PROTHEUS" VARCHAR2(5 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table FILIAL
--------------------------------------------------------

  CREATE TABLE "CNAB"."FILIAL" 
   (	"ID_FILIAL" NUMBER, 
	"CD_EMPRESA" NUMBER, 
	"DS_DESCRICAO" VARCHAR2(105 BYTE), 
	"CD_FILIAL" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table FOLHA
--------------------------------------------------------

  CREATE TABLE "CNAB"."FOLHA" 
   (	"ID_FOLHA" NUMBER, 
	"CD_EMPRESA" NUMBER, 
	"CD_FILIAL" NUMBER, 
	"NU_MESCOMP" NUMBER, 
	"NU_ANOCOMP" NUMBER, 
	"VL_TOTAL" NUMBER(15,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table BANCO
--------------------------------------------------------

  CREATE TABLE "CNAB"."BANCO" 
   (	"ID_BANCO" NUMBER, 
	"CD_BANCO" NUMBER, 
	"DS_DESCRICAO" VARCHAR2(105 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table FUNCIONARIO
--------------------------------------------------------

  CREATE TABLE "CNAB"."FUNCIONARIO" 
   (	"ID_FUNCIONARIO" NUMBER, 
	"CD_EMPRESA" NUMBER, 
	"CD_CHAPA" VARCHAR2(6 BYTE), 
	"NM_NOME" VARCHAR2(105 BYTE), 
	"CD_AGENCIA" NUMBER, 
	"CD_CONTA" NUMBER, 
	"CD_CONTA_DIGITO" VARCHAR2(5 BYTE), 
	"CD_AGENCIA_DIGITO" VARCHAR2(5 BYTE), 
	"CD_CPF" VARCHAR2(20 BYTE), 
	"CD_BANCO" NUMBER, 
	"CD_CCUSTO" VARCHAR2(20 BYTE), 
	"CD_SITUACAO" VARCHAR2(45 BYTE), 
	"CD_PERIODO_PAGTO" VARCHAR2(45 BYTE), 
	"CD_SECAO" VARCHAR2(9 BYTE), 
	"CD_FILIAL" VARCHAR2(2 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table BASE_PROCESSO
--------------------------------------------------------

  CREATE TABLE "CNAB"."BASE_PROCESSO" 
   (	"ID_BASE_PROCESSO" NUMBER, 
	"CD_CHAPA" VARCHAR2(6 BYTE), 
	"NM_NOME" VARCHAR2(105 BYTE), 
	"VL_VALOR" NUMBER(15,2), 
	"CD_BANCO" NUMBER, 
	"CD_AGENCIA" NUMBER, 
	"CD_CONTA" NUMBER, 
	"CD_CONTA_DIGITO" VARCHAR2(5 BYTE), 
	"ID_PROCESSO" NUMBER, 
	"CD_CCUSTO" VARCHAR2(45 BYTE), 
	"CD_PERIODO_PAGTO" VARCHAR2(40 BYTE), 
	"DS_SITUACAO" VARCHAR2(45 BYTE), 
	"CD_AGENCIA_DIGITO" VARCHAR2(5 BYTE), 
	"CD_CPF" VARCHAR2(20 BYTE), 
	"CD_SECAO" VARCHAR2(20 BYTE), 
	"CD_FILIAL" NUMBER, 
	"DT_REAL_PAGTO" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PROCESSO
--------------------------------------------------------

  CREATE TABLE "CNAB"."PROCESSO" 
   (	"ID_PROCESSO" NUMBER, 
	"CD_EMPRESA" NUMBER, 
	"CD_FILIAL" NUMBER, 
	"ID_TIPO_OPERACAO" NUMBER, 
	"DT_PROCESSO" DATE, 
	"ID_USUARIO" NUMBER, 
	"DT_DATA_PAGTO" DATE, 
	"VL_TOTAL" NUMBER(15,2), 
	"CD_FOLHA" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LANCAMENTO_FINANCEIRO
--------------------------------------------------------

  CREATE TABLE "CNAB"."LANCAMENTO_FINANCEIRO" 
   (	"ID_LANCAMENTO_FINANCEIRO" NUMBER, 
	"CD_FILIAL" NUMBER, 
	"DS_PREFIX" VARCHAR2(5 BYTE), 
	"NU_SEQUENCIAL" NUMBER, 
	"NU_PARCELA" NUMBER, 
	"DS_TIPO" VARCHAR2(5 BYTE), 
	"NU_NATUREZA" NUMBER, 
	"NU_DIRF" NUMBER, 
	"DS_CODRET" VARCHAR2(20 BYTE), 
	"CD_FORNECEDOR" VARCHAR2(11 BYTE), 
	"CD_LOJA" VARCHAR2(5 BYTE), 
	"NM_FORNECEDOR" VARCHAR2(105 BYTE), 
	"DS_EMISSAO" VARCHAR2(10 BYTE), 
	"DS_VENCIMENTO" VARCHAR2(10 BYTE), 
	"VL_VALOR" NUMBER(15,2), 
	"DS_HISTORICO" VARCHAR2(255 BYTE), 
	"DS_RATEIO" CHAR(1 BYTE), 
	"NU_ACRESCIMO" NUMBER, 
	"NU_DECRESCIMO" NUMBER, 
	"CD_CCUSTO" VARCHAR2(25 BYTE), 
	"NU_CONTA_ORCAMENTARIA" VARCHAR2(20 BYTE), 
	"CD_LOG" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CONTA_BANCARIA
--------------------------------------------------------

  CREATE TABLE "CNAB"."CONTA_BANCARIA" 
   (	"ID_CONTA_BANCARIA" NUMBER, 
	"CD_AGENCIA" NUMBER, 
	"CD_CONTA" NUMBER, 
	"CD_CONTA_DIGITO" VARCHAR2(5 BYTE), 
	"CD_RAZAO_CC" NUMBER, 
	"CD_EMPRESA_BANCO" NUMBER, 
	"CD_EMPRESA" NUMBER, 
	"CD_BANCO" NUMBER, 
	"CD_AGENCIA_DIGITO" VARCHAR2(2 BYTE), 
	"CD_CONVENIO" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
 

   COMMENT ON COLUMN "CNAB"."CONTA_BANCARIA"."ID_CONTA_BANCARIA" IS 'ID da Conta Banc�ria';
 
   COMMENT ON COLUMN "CNAB"."CONTA_BANCARIA"."CD_AGENCIA" IS 'Ag�ncia da Conta Banc�ria';
 
   COMMENT ON COLUMN "CNAB"."CONTA_BANCARIA"."CD_CONTA" IS 'Conta da Conta Banc�ria';
 
   COMMENT ON COLUMN "CNAB"."CONTA_BANCARIA"."CD_CONTA_DIGITO" IS 'D�gito da Conta da Conta Banc�ria';
 
   COMMENT ON COLUMN "CNAB"."CONTA_BANCARIA"."CD_RAZAO_CC" IS 'Raz�o da CC';
 
   COMMENT ON COLUMN "CNAB"."CONTA_BANCARIA"."CD_EMPRESA_BANCO" IS 'N�mero da Empresa no Banco';
 
   COMMENT ON COLUMN "CNAB"."CONTA_BANCARIA"."CD_EMPRESA" IS 'Chave Estrangeira para tabela Empresa';
 
   COMMENT ON COLUMN "CNAB"."CONTA_BANCARIA"."CD_BANCO" IS 'Chave Estrangeira para tabela Banco';
 
   COMMENT ON COLUMN "CNAB"."CONTA_BANCARIA"."CD_AGENCIA_DIGITO" IS 'D�gito da Ag�ncia da Conta Banc�ria';
 
   COMMENT ON COLUMN "CNAB"."CONTA_BANCARIA"."CD_CONVENIO" IS 'N�mero de Conv�nio com Banco';
--------------------------------------------------------
--  DDL for Table CNAB_TXT
--------------------------------------------------------

  CREATE TABLE "CNAB"."CNAB_TXT" 
   (	"ID_CNAB_TXT" NUMBER, 
	"ID_PROCESSO" NUMBER, 
	"TX_LINHA" LONG, 
	"CD_AGENCIA" NUMBER, 
	"CD_CONTA" NUMBER, 
	"CD_CONTA_DIGITO" VARCHAR2(5 BYTE), 
	"CD_CHAPA" VARCHAR2(6 BYTE), 
	"NM_NOME" VARCHAR2(125 BYTE), 
	"VL_VALOR" NUMBER(*,0), 
	"CD_LINHA" VARCHAR2(6 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ITENS_ARQUIVO
--------------------------------------------------------

  CREATE TABLE "CNAB"."ITENS_ARQUIVO" 
   (	"ID_ITENS_ARQUIVO" NUMBER, 
	"ID_PROCESSO" NUMBER, 
	"TX_LINHA" LONG, 
	"CD_BANCO" NUMBER, 
	"CD_BASE_PROCESSO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PERIODO_PAGTO
--------------------------------------------------------

  CREATE TABLE "CNAB"."PERIODO_PAGTO" 
   (	"ID_PERIODO_PAGTO" NUMBER, 
	"DS_DESCRICAO" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USUARIO
--------------------------------------------------------

  CREATE TABLE "CNAB"."USUARIO" 
   (	"ID_USUARIO" NUMBER, 
	"DS_LOGIN" VARCHAR2(45 BYTE), 
	"DS_SENHA" VARCHAR2(45 BYTE), 
	"NM_NOME" VARCHAR2(105 BYTE), 
	"DS_EMAIL" VARCHAR2(105 BYTE), 
	"DS_TOKEN" VARCHAR2(45 BYTE), 
	"ST_STATUS" NUMBER(1,0), 
	"NU_PRIVILEGIO" NUMBER(2,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TIPO_OPERACAO
--------------------------------------------------------

  CREATE TABLE "CNAB"."TIPO_OPERACAO" 
   (	"ID_TIPO_OPERACAO" NUMBER, 
	"DS_DESCRICAO" VARCHAR2(25 BYTE), 
	"CD_NATUREZA" VARCHAR2(20 BYTE), 
	"CD_TIPO" VARCHAR2(5 BYTE), 
	"CD_PERIODO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ARQUIVO
--------------------------------------------------------

  CREATE TABLE "CNAB"."ARQUIVO" 
   (	"ID_ARQUIVO" NUMBER, 
	"NM_ACAO" VARCHAR2(20 BYTE), 
	"DT_DATA" DATE, 
	"CD_PROCESSO" NUMBER, 
	"CD_USUARIO" NUMBER, 
	"DS_ARQUIVO_XLS" VARCHAR2(150 BYTE), 
	"DS_ARQUIVO_CNAB" VARCHAR2(150 BYTE), 
	"VL_TOTAL" NUMBER(15,2), 
	"CD_BANCO" NUMBER, 
	"DS_ARQUIVO_LF" VARCHAR2(150 BYTE), 
	"DS_LAYOUT" VARCHAR2(3 BYTE), 
	"CD_EMPRESAPAG" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index EMPRESA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CNAB"."EMPRESA_PK" ON "CNAB"."EMPRESA" ("ID_EMPRESA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index EMPRESA_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "CNAB"."EMPRESA_UK1" ON "CNAB"."EMPRESA" ("CD_COLIGADA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index FILIAL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CNAB"."FILIAL_PK" ON "CNAB"."FILIAL" ("ID_FILIAL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index FOLHA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CNAB"."FOLHA_PK" ON "CNAB"."FOLHA" ("ID_FOLHA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index BANCO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CNAB"."BANCO_PK" ON "CNAB"."BANCO" ("ID_BANCO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index FUNCIONARIO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CNAB"."FUNCIONARIO_PK" ON "CNAB"."FUNCIONARIO" ("ID_FUNCIONARIO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index BASE_PROCESSO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CNAB"."BASE_PROCESSO_PK" ON "CNAB"."BASE_PROCESSO" ("ID_BASE_PROCESSO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PROCESSO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CNAB"."PROCESSO_PK" ON "CNAB"."PROCESSO" ("ID_PROCESSO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index LANCAMENTO_FINANCEIRO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CNAB"."LANCAMENTO_FINANCEIRO_PK" ON "CNAB"."LANCAMENTO_FINANCEIRO" ("ID_LANCAMENTO_FINANCEIRO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index C_BANCARIA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CNAB"."C_BANCARIA_PK" ON "CNAB"."CONTA_BANCARIA" ("ID_CONTA_BANCARIA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CNAB_TXT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CNAB"."CNAB_TXT_PK" ON "CNAB"."CNAB_TXT" ("ID_CNAB_TXT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CNAB_NOVO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CNAB"."CNAB_NOVO_PK" ON "CNAB"."ITENS_ARQUIVO" ("ID_ITENS_ARQUIVO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PERIODO_PAGAMENTO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CNAB"."PERIODO_PAGAMENTO_PK" ON "CNAB"."PERIODO_PAGTO" ("ID_PERIODO_PAGTO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index USUARIO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CNAB"."USUARIO_PK" ON "CNAB"."USUARIO" ("ID_USUARIO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TIPO_OPERACAO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CNAB"."TIPO_OPERACAO_PK" ON "CNAB"."TIPO_OPERACAO" ("ID_TIPO_OPERACAO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index LOG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CNAB"."LOG_PK" ON "CNAB"."ARQUIVO" ("ID_ARQUIVO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table EMPRESA
--------------------------------------------------------

  ALTER TABLE "CNAB"."EMPRESA" ADD CONSTRAINT "EMPRESA_PK" PRIMARY KEY ("ID_EMPRESA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "CNAB"."EMPRESA" MODIFY ("ID_EMPRESA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FILIAL
--------------------------------------------------------

  ALTER TABLE "CNAB"."FILIAL" ADD CONSTRAINT "FILIAL_PK" PRIMARY KEY ("ID_FILIAL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "CNAB"."FILIAL" MODIFY ("ID_FILIAL" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FOLHA
--------------------------------------------------------

  ALTER TABLE "CNAB"."FOLHA" ADD CONSTRAINT "FOLHA_PK" PRIMARY KEY ("ID_FOLHA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
 
  ALTER TABLE "CNAB"."FOLHA" MODIFY ("ID_FOLHA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BANCO
--------------------------------------------------------

  ALTER TABLE "CNAB"."BANCO" ADD CONSTRAINT "BANCO_PK" PRIMARY KEY ("ID_BANCO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "CNAB"."BANCO" MODIFY ("ID_BANCO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FUNCIONARIO
--------------------------------------------------------

  ALTER TABLE "CNAB"."FUNCIONARIO" ADD CONSTRAINT "FUNCIONARIO_PK" PRIMARY KEY ("ID_FUNCIONARIO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "CNAB"."FUNCIONARIO" MODIFY ("ID_FUNCIONARIO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BASE_PROCESSO
--------------------------------------------------------

  ALTER TABLE "CNAB"."BASE_PROCESSO" ADD CONSTRAINT "BASE_PROCESSO_PK" PRIMARY KEY ("ID_BASE_PROCESSO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "CNAB"."BASE_PROCESSO" MODIFY ("ID_BASE_PROCESSO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROCESSO
--------------------------------------------------------

  ALTER TABLE "CNAB"."PROCESSO" ADD CONSTRAINT "PROCESSO_PK" PRIMARY KEY ("ID_PROCESSO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "CNAB"."PROCESSO" MODIFY ("ID_PROCESSO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LANCAMENTO_FINANCEIRO
--------------------------------------------------------

  ALTER TABLE "CNAB"."LANCAMENTO_FINANCEIRO" ADD CONSTRAINT "LANCAMENTO_FINANCEIRO_PK" PRIMARY KEY ("ID_LANCAMENTO_FINANCEIRO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
 
  ALTER TABLE "CNAB"."LANCAMENTO_FINANCEIRO" MODIFY ("ID_LANCAMENTO_FINANCEIRO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CONTA_BANCARIA
--------------------------------------------------------

  ALTER TABLE "CNAB"."CONTA_BANCARIA" ADD CONSTRAINT "C_BANCARIA_PK" PRIMARY KEY ("ID_CONTA_BANCARIA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "CNAB"."CONTA_BANCARIA" MODIFY ("ID_CONTA_BANCARIA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CNAB_TXT
--------------------------------------------------------

  ALTER TABLE "CNAB"."CNAB_TXT" ADD CONSTRAINT "CNAB_TXT_PK" PRIMARY KEY ("ID_CNAB_TXT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "CNAB"."CNAB_TXT" MODIFY ("ID_CNAB_TXT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ITENS_ARQUIVO
--------------------------------------------------------

  ALTER TABLE "CNAB"."ITENS_ARQUIVO" ADD CONSTRAINT "CNAB_NOVO_PK" PRIMARY KEY ("ID_ITENS_ARQUIVO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "CNAB"."ITENS_ARQUIVO" MODIFY ("ID_ITENS_ARQUIVO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PERIODO_PAGTO
--------------------------------------------------------

  ALTER TABLE "CNAB"."PERIODO_PAGTO" ADD CONSTRAINT "PERIODO_PAGAMENTO_PK" PRIMARY KEY ("ID_PERIODO_PAGTO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "CNAB"."PERIODO_PAGTO" MODIFY ("ID_PERIODO_PAGTO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USUARIO
--------------------------------------------------------

  ALTER TABLE "CNAB"."USUARIO" MODIFY ("ID_USUARIO" NOT NULL ENABLE);
 
  ALTER TABLE "CNAB"."USUARIO" ADD CONSTRAINT "USUARIO_PK" PRIMARY KEY ("ID_USUARIO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TIPO_OPERACAO
--------------------------------------------------------

  ALTER TABLE "CNAB"."TIPO_OPERACAO" MODIFY ("ID_TIPO_OPERACAO" NOT NULL ENABLE);
 
  ALTER TABLE "CNAB"."TIPO_OPERACAO" ADD CONSTRAINT "TIPO_OPERACAO_PK" PRIMARY KEY ("ID_TIPO_OPERACAO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ARQUIVO
--------------------------------------------------------

  ALTER TABLE "CNAB"."ARQUIVO" ADD CONSTRAINT "LOG_PK" PRIMARY KEY ("ID_ARQUIVO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "CNAB"."ARQUIVO" MODIFY ("ID_ARQUIVO" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table FILIAL
--------------------------------------------------------

  ALTER TABLE "CNAB"."FILIAL" ADD CONSTRAINT "FILIAL_EMPRESA_FK1" FOREIGN KEY ("CD_EMPRESA")
	  REFERENCES "CNAB"."EMPRESA" ("ID_EMPRESA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FOLHA
--------------------------------------------------------

  ALTER TABLE "CNAB"."FOLHA" ADD CONSTRAINT "FOLHA_FK1" FOREIGN KEY ("CD_EMPRESA")
	  REFERENCES "CNAB"."EMPRESA" ("ID_EMPRESA") ENABLE;
 
  ALTER TABLE "CNAB"."FOLHA" ADD CONSTRAINT "FOLHA_FK2" FOREIGN KEY ("CD_FILIAL")
	  REFERENCES "CNAB"."FILIAL" ("ID_FILIAL") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FUNCIONARIO
--------------------------------------------------------

  ALTER TABLE "CNAB"."FUNCIONARIO" ADD CONSTRAINT "FUNCIONARIO_EMPRESA_FK1" FOREIGN KEY ("CD_EMPRESA")
	  REFERENCES "CNAB"."EMPRESA" ("ID_EMPRESA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BASE_PROCESSO
--------------------------------------------------------

  ALTER TABLE "CNAB"."BASE_PROCESSO" ADD CONSTRAINT "BASE_PROCESSO_BANCO_FK1" FOREIGN KEY ("CD_BANCO")
	  REFERENCES "CNAB"."BANCO" ("ID_BANCO") ENABLE;
 
  ALTER TABLE "CNAB"."BASE_PROCESSO" ADD CONSTRAINT "BASE_PROCESSO_PROCESSO_FK1" FOREIGN KEY ("ID_PROCESSO")
	  REFERENCES "CNAB"."PROCESSO" ("ID_PROCESSO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PROCESSO
--------------------------------------------------------

  ALTER TABLE "CNAB"."PROCESSO" ADD CONSTRAINT "PROCESSO_EMPRESA_FK1" FOREIGN KEY ("CD_EMPRESA")
	  REFERENCES "CNAB"."EMPRESA" ("ID_EMPRESA") ENABLE;
 
  ALTER TABLE "CNAB"."PROCESSO" ADD CONSTRAINT "PROCESSO_FILIAL_FK1" FOREIGN KEY ("CD_FILIAL")
	  REFERENCES "CNAB"."FILIAL" ("ID_FILIAL") ENABLE;
 
  ALTER TABLE "CNAB"."PROCESSO" ADD CONSTRAINT "PROCESSO_FK1" FOREIGN KEY ("CD_FOLHA")
	  REFERENCES "CNAB"."FOLHA" ("ID_FOLHA") ENABLE;
 
  ALTER TABLE "CNAB"."PROCESSO" ADD CONSTRAINT "PROCESSO_TIPO_OPERACAO_FK1" FOREIGN KEY ("ID_TIPO_OPERACAO")
	  REFERENCES "CNAB"."TIPO_OPERACAO" ("ID_TIPO_OPERACAO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LANCAMENTO_FINANCEIRO
--------------------------------------------------------

  ALTER TABLE "CNAB"."LANCAMENTO_FINANCEIRO" ADD CONSTRAINT "LANCAMENTO_FINANCEIRO_FK1" FOREIGN KEY ("CD_LOG")
	  REFERENCES "CNAB"."ARQUIVO" ("ID_ARQUIVO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CONTA_BANCARIA
--------------------------------------------------------

  ALTER TABLE "CNAB"."CONTA_BANCARIA" ADD CONSTRAINT "CONTA_BANCARIA_BANCO_FK1" FOREIGN KEY ("CD_BANCO")
	  REFERENCES "CNAB"."BANCO" ("ID_BANCO") ENABLE;
 
  ALTER TABLE "CNAB"."CONTA_BANCARIA" ADD CONSTRAINT "C_BANCARIA_EMPRESA_FK1" FOREIGN KEY ("CD_EMPRESA")
	  REFERENCES "CNAB"."EMPRESA" ("ID_EMPRESA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CNAB_TXT
--------------------------------------------------------

  ALTER TABLE "CNAB"."CNAB_TXT" ADD CONSTRAINT "CNAB_TXT_PROCESSO_FK1" FOREIGN KEY ("ID_PROCESSO")
	  REFERENCES "CNAB"."PROCESSO" ("ID_PROCESSO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ITENS_ARQUIVO
--------------------------------------------------------

  ALTER TABLE "CNAB"."ITENS_ARQUIVO" ADD CONSTRAINT "CNAB_NOVO_FK1" FOREIGN KEY ("CD_BANCO")
	  REFERENCES "CNAB"."BANCO" ("ID_BANCO") ENABLE;
 
  ALTER TABLE "CNAB"."ITENS_ARQUIVO" ADD CONSTRAINT "CNAB_NOVO_FK2" FOREIGN KEY ("CD_BASE_PROCESSO")
	  REFERENCES "CNAB"."BASE_PROCESSO" ("ID_BASE_PROCESSO") ENABLE;
 
  ALTER TABLE "CNAB"."ITENS_ARQUIVO" ADD CONSTRAINT "CNAB_NOVO_PROCESSO_FK1" FOREIGN KEY ("ID_PROCESSO")
	  REFERENCES "CNAB"."PROCESSO" ("ID_PROCESSO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ARQUIVO
--------------------------------------------------------

  ALTER TABLE "CNAB"."ARQUIVO" ADD CONSTRAINT "ARQUIVO_EMPRESA_FK" FOREIGN KEY ("CD_EMPRESAPAG")
	  REFERENCES "CNAB"."EMPRESA" ("ID_EMPRESA") ENABLE;
 
  ALTER TABLE "CNAB"."ARQUIVO" ADD CONSTRAINT "LOG_FK1" FOREIGN KEY ("CD_BANCO")
	  REFERENCES "CNAB"."BANCO" ("ID_BANCO") ENABLE;
 
  ALTER TABLE "CNAB"."ARQUIVO" ADD CONSTRAINT "LOG_PROCESSO_FK1" FOREIGN KEY ("CD_PROCESSO")
	  REFERENCES "CNAB"."PROCESSO" ("ID_PROCESSO") ENABLE;
 
  ALTER TABLE "CNAB"."ARQUIVO" ADD CONSTRAINT "LOG_USUARIO_FK1" FOREIGN KEY ("CD_USUARIO")
	  REFERENCES "CNAB"."USUARIO" ("ID_USUARIO") ENABLE;
