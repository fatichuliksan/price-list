/*
 Navicat Premium Data Transfer

 Source Server         : pg-localhost
 Source Server Type    : PostgreSQL
 Source Server Version : 170004 (170004)
 Source Host           : localhost:32769
 Source Catalog        : price-list
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 170004 (170004)
 File Encoding         : 65001

 Date: 06/09/2025 08:23:08
*/


-- ----------------------------
-- Sequence structure for categories_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."categories_id_seq";
CREATE SEQUENCE "public"."categories_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."categories_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for failed_jobs_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."failed_jobs_id_seq";
CREATE SEQUENCE "public"."failed_jobs_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."failed_jobs_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for item_units_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."item_units_id_seq";
CREATE SEQUENCE "public"."item_units_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."item_units_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for items_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."items_id_seq";
CREATE SEQUENCE "public"."items_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."items_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for jobs_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."jobs_id_seq";
CREATE SEQUENCE "public"."jobs_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."jobs_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for migrations_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."migrations_id_seq";
CREATE SEQUENCE "public"."migrations_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
ALTER SEQUENCE "public"."migrations_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for prices_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."prices_id_seq";
CREATE SEQUENCE "public"."prices_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."prices_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for retailer_branches_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."retailer_branches_id_seq";
CREATE SEQUENCE "public"."retailer_branches_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."retailer_branches_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for retailers_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."retailers_id_seq";
CREATE SEQUENCE "public"."retailers_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."retailers_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for units_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."units_id_seq";
CREATE SEQUENCE "public"."units_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."units_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for users_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."users_id_seq";
CREATE SEQUENCE "public"."users_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
ALTER SEQUENCE "public"."users_id_seq" OWNER TO "postgres";

-- ----------------------------
-- Table structure for cache
-- ----------------------------
DROP TABLE IF EXISTS "public"."cache";
CREATE TABLE "public"."cache" (
  "key" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "value" text COLLATE "pg_catalog"."default" NOT NULL,
  "expiration" int4 NOT NULL
)
;
ALTER TABLE "public"."cache" OWNER TO "postgres";

-- ----------------------------
-- Records of cache
-- ----------------------------
BEGIN;
INSERT INTO "public"."cache" ("key", "value", "expiration") VALUES ('laravel-cache-77de68daecd823babbb58edb1c8e14d7106e83bb:timer', 'i:1756825603;', 1756825603);
INSERT INTO "public"."cache" ("key", "value", "expiration") VALUES ('laravel-cache-77de68daecd823babbb58edb1c8e14d7106e83bb', 'i:1;', 1756825603);
INSERT INTO "public"."cache" ("key", "value", "expiration") VALUES ('laravel-cache-livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6:timer', 'i:1756855819;', 1756855819);
INSERT INTO "public"."cache" ("key", "value", "expiration") VALUES ('laravel-cache-livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6', 'i:1;', 1756855819);
COMMIT;

-- ----------------------------
-- Table structure for cache_locks
-- ----------------------------
DROP TABLE IF EXISTS "public"."cache_locks";
CREATE TABLE "public"."cache_locks" (
  "key" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "owner" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "expiration" int4 NOT NULL
)
;
ALTER TABLE "public"."cache_locks" OWNER TO "postgres";

-- ----------------------------
-- Records of cache_locks
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."categories";
CREATE TABLE "public"."categories" (
  "id" int8 NOT NULL DEFAULT nextval('categories_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;
ALTER TABLE "public"."categories" OWNER TO "postgres";

-- ----------------------------
-- Records of categories
-- ----------------------------
BEGIN;
INSERT INTO "public"."categories" ("id", "name", "created_at", "updated_at", "deleted_at") VALUES (1, 'Food and Drink', '2025-08-31 14:02:09', '2025-09-01 01:32:34', NULL);
INSERT INTO "public"."categories" ("id", "name", "created_at", "updated_at", "deleted_at") VALUES (2, 'Electronic', '2025-09-01 23:54:24', '2025-09-01 23:54:24', NULL);
COMMIT;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS "public"."failed_jobs";
CREATE TABLE "public"."failed_jobs" (
  "id" int8 NOT NULL DEFAULT nextval('failed_jobs_id_seq'::regclass),
  "uuid" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "connection" text COLLATE "pg_catalog"."default" NOT NULL,
  "queue" text COLLATE "pg_catalog"."default" NOT NULL,
  "payload" text COLLATE "pg_catalog"."default" NOT NULL,
  "exception" text COLLATE "pg_catalog"."default" NOT NULL,
  "failed_at" timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;
ALTER TABLE "public"."failed_jobs" OWNER TO "postgres";

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for item_units
-- ----------------------------
DROP TABLE IF EXISTS "public"."item_units";
CREATE TABLE "public"."item_units" (
  "id" int8 NOT NULL DEFAULT nextval('item_units_id_seq'::regclass),
  "item_id" int8 NOT NULL,
  "unit_id" int8 NOT NULL,
  "universal_product_code" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;
ALTER TABLE "public"."item_units" OWNER TO "postgres";

-- ----------------------------
-- Records of item_units
-- ----------------------------
BEGIN;
INSERT INTO "public"."item_units" ("id", "item_id", "unit_id", "universal_product_code", "created_at", "updated_at", "deleted_at") VALUES (1, 1, 1, '089686041705', '2025-09-01 14:14:03', '2025-09-01 14:14:03', NULL);
INSERT INTO "public"."item_units" ("id", "item_id", "unit_id", "universal_product_code", "created_at", "updated_at", "deleted_at") VALUES (2, 3, 2, '8992946122002', '2025-09-02 15:03:40', '2025-09-02 15:03:40', NULL);
COMMIT;

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS "public"."items";
CREATE TABLE "public"."items" (
  "id" int8 NOT NULL DEFAULT nextval('items_id_seq'::regclass),
  "category_id" int8,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0),
  "description" text COLLATE "pg_catalog"."default",
  "image" varchar COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."items" OWNER TO "postgres";

-- ----------------------------
-- Records of items
-- ----------------------------
BEGIN;
INSERT INTO "public"."items" ("id", "category_id", "name", "created_at", "updated_at", "deleted_at", "description", "image") VALUES (1, 1, 'INDOMIE MI GORENG JUMBO 129GR', '2025-08-31 14:22:17', '2025-09-01 01:10:56', NULL, 'INDOMIE MI GORENG JUMBO 129GR', 'item_images/01K41D7H1N556V14DFWN6452QV.jpeg');
INSERT INTO "public"."items" ("id", "category_id", "name", "created_at", "updated_at", "deleted_at", "description", "image") VALUES (2, 1, 'INDOMIE POP SPAGETI SPICY BOLOGNESE 80GR', '2025-09-01 00:54:40', '2025-09-01 01:12:39', NULL, 'INDOMIE POP SPAGETI SPICY BOLOGNESE 80GR', 'item_images/01K41D9GXABWV3234EQNRXPYJC.jpeg');
INSERT INTO "public"."items" ("id", "category_id", "name", "created_at", "updated_at", "deleted_at", "description", "image") VALUES (3, 1, 'TROPICAL MINYAK GORENG BOTOL 2L', '2025-09-02 01:12:50', '2025-09-02 15:02:20', NULL, 'TROPICAL MINYAK GORENG BOTOL 2L', 'item_images/01K43ZQPTWXPFX3DTR7ZBEAX9A.jpeg');
COMMIT;

-- ----------------------------
-- Table structure for job_batches
-- ----------------------------
DROP TABLE IF EXISTS "public"."job_batches";
CREATE TABLE "public"."job_batches" (
  "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "total_jobs" int4 NOT NULL,
  "pending_jobs" int4 NOT NULL,
  "failed_jobs" int4 NOT NULL,
  "failed_job_ids" text COLLATE "pg_catalog"."default" NOT NULL,
  "options" text COLLATE "pg_catalog"."default",
  "cancelled_at" int4,
  "created_at" int4 NOT NULL,
  "finished_at" int4
)
;
ALTER TABLE "public"."job_batches" OWNER TO "postgres";

-- ----------------------------
-- Records of job_batches
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS "public"."jobs";
CREATE TABLE "public"."jobs" (
  "id" int8 NOT NULL DEFAULT nextval('jobs_id_seq'::regclass),
  "queue" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "payload" text COLLATE "pg_catalog"."default" NOT NULL,
  "attempts" int2 NOT NULL,
  "reserved_at" int4,
  "available_at" int4 NOT NULL,
  "created_at" int4 NOT NULL
)
;
ALTER TABLE "public"."jobs" OWNER TO "postgres";

-- ----------------------------
-- Records of jobs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS "public"."migrations";
CREATE TABLE "public"."migrations" (
  "id" int4 NOT NULL DEFAULT nextval('migrations_id_seq'::regclass),
  "migration" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "batch" int4 NOT NULL
)
;
ALTER TABLE "public"."migrations" OWNER TO "postgres";

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO "public"."migrations" ("id", "migration", "batch") VALUES (1, '0001_01_01_000000_create_users_table', 1);
INSERT INTO "public"."migrations" ("id", "migration", "batch") VALUES (2, '0001_01_01_000001_create_cache_table', 1);
INSERT INTO "public"."migrations" ("id", "migration", "batch") VALUES (3, '0001_01_01_000002_create_jobs_table', 1);
INSERT INTO "public"."migrations" ("id", "migration", "batch") VALUES (4, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO "public"."migrations" ("id", "migration", "batch") VALUES (5, '2025_08_31_123724_create_categories_table', 2);
INSERT INTO "public"."migrations" ("id", "migration", "batch") VALUES (6, '2025_08_31_140503_create_items_table', 3);
INSERT INTO "public"."migrations" ("id", "migration", "batch") VALUES (7, '2025_09_01_013431_create_retailers_table', 4);
INSERT INTO "public"."migrations" ("id", "migration", "batch") VALUES (8, '2025_09_01_014557_create_retailer_branches_table', 5);
INSERT INTO "public"."migrations" ("id", "migration", "batch") VALUES (9, '2025_09_01_140149_create_units_table', 6);
INSERT INTO "public"."migrations" ("id", "migration", "batch") VALUES (10, '2025_09_01_140356_create_item_units_table', 7);
INSERT INTO "public"."migrations" ("id", "migration", "batch") VALUES (11, '2025_09_01_142309_create_prices_table', 8);
COMMIT;

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS "public"."password_reset_tokens";
CREATE TABLE "public"."password_reset_tokens" (
  "email" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "token" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(0)
)
;
ALTER TABLE "public"."password_reset_tokens" OWNER TO "postgres";

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------
BEGIN;
INSERT INTO "public"."password_reset_tokens" ("email", "token", "created_at") VALUES ('test@example.com', '$2y$12$R/Hudx5Cj/5g8ukroJHcf.omZUVjKzrGug6ROuNPUxlB3J56FIvD.', '2025-08-31 12:05:34');
COMMIT;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS "public"."password_resets";
CREATE TABLE "public"."password_resets" (
  "email" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "token" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(0)
)
;
ALTER TABLE "public"."password_resets" OWNER TO "postgres";

-- ----------------------------
-- Records of password_resets
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for prices
-- ----------------------------
DROP TABLE IF EXISTS "public"."prices";
CREATE TABLE "public"."prices" (
  "id" int8 NOT NULL DEFAULT nextval('prices_id_seq'::regclass),
  "item_unit_id" int8 NOT NULL,
  "retailer_branch_id" int8 NOT NULL,
  "date" date NOT NULL,
  "price" numeric(10,2) NOT NULL,
  "discount" numeric(10,2) NOT NULL,
  "sell_price" numeric(10,2) NOT NULL,
  "created_by" int8,
  "updated_by" int8,
  "deleted_by" int8,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;
ALTER TABLE "public"."prices" OWNER TO "postgres";

-- ----------------------------
-- Records of prices
-- ----------------------------
BEGIN;
INSERT INTO "public"."prices" ("id", "item_unit_id", "retailer_branch_id", "date", "price", "discount", "sell_price", "created_by", "updated_by", "deleted_by", "created_at", "updated_at", "deleted_at") VALUES (4, 1, 1, '2025-08-23', 4190.00, 193.00, 3997.00, 3, 3, NULL, '2025-09-02 00:36:38', '2025-09-02 01:10:46', NULL);
INSERT INTO "public"."prices" ("id", "item_unit_id", "retailer_branch_id", "date", "price", "discount", "sell_price", "created_by", "updated_by", "deleted_by", "created_at", "updated_at", "deleted_at") VALUES (5, 2, 1, '2025-08-23', 40990.00, 6087.00, 34903.00, 3, 3, NULL, '2025-09-02 15:08:02', '2025-09-02 15:08:02', NULL);
INSERT INTO "public"."prices" ("id", "item_unit_id", "retailer_branch_id", "date", "price", "discount", "sell_price", "created_by", "updated_by", "deleted_by", "created_at", "updated_at", "deleted_at") VALUES (6, 2, 2, '2025-03-08', 40090.00, 4200.00, 35890.00, 3, 3, NULL, '2025-09-02 15:09:34', '2025-09-02 15:09:34', NULL);
INSERT INTO "public"."prices" ("id", "item_unit_id", "retailer_branch_id", "date", "price", "discount", "sell_price", "created_by", "updated_by", "deleted_by", "created_at", "updated_at", "deleted_at") VALUES (7, 2, 2, '2023-10-29', 34590.00, 3096.00, 31494.00, 3, 3, NULL, '2025-09-02 15:11:09', '2025-09-02 15:11:27', NULL);
COMMIT;

-- ----------------------------
-- Table structure for retailer_branches
-- ----------------------------
DROP TABLE IF EXISTS "public"."retailer_branches";
CREATE TABLE "public"."retailer_branches" (
  "id" int8 NOT NULL DEFAULT nextval('retailer_branches_id_seq'::regclass),
  "retailer_id" int8 NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "address" text COLLATE "pg_catalog"."default" NOT NULL,
  "latitude" varchar(255) COLLATE "pg_catalog"."default",
  "longitude" varchar(255) COLLATE "pg_catalog"."default",
  "phone" varchar(255) COLLATE "pg_catalog"."default",
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;
ALTER TABLE "public"."retailer_branches" OWNER TO "postgres";

-- ----------------------------
-- Records of retailer_branches
-- ----------------------------
BEGIN;
INSERT INTO "public"."retailer_branches" ("id", "retailer_id", "name", "address", "latitude", "longitude", "phone", "created_at", "updated_at", "deleted_at") VALUES (1, 1, 'Super Indo Bhayangkara Mojokerto', 'Jl. Bhayangkara No.33-35, Mergelo, Sentanan, Kec. Magersari, Kota Mojokerto, Jawa Timur 61322', NULL, NULL, '(0321) 399233', '2025-09-01 01:58:46', '2025-09-01 02:00:10', NULL);
INSERT INTO "public"."retailer_branches" ("id", "retailer_id", "name", "address", "latitude", "longitude", "phone", "created_at", "updated_at", "deleted_at") VALUES (2, 3, 'Hypermart Lippo Plaza Sidoarjo', 'Jl. Jati Raya No.1, Jati, Kec. Sidoarjo, Kabupaten Sidoarjo, Jawa Timur 61226', NULL, NULL, '(031) 58204730', '2025-09-02 15:06:56', '2025-09-02 15:06:56', NULL);
COMMIT;

-- ----------------------------
-- Table structure for retailers
-- ----------------------------
DROP TABLE IF EXISTS "public"."retailers";
CREATE TABLE "public"."retailers" (
  "id" int8 NOT NULL DEFAULT nextval('retailers_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "description" text COLLATE "pg_catalog"."default" NOT NULL,
  "website" varchar(255) COLLATE "pg_catalog"."default",
  "image" varchar(255) COLLATE "pg_catalog"."default",
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;
ALTER TABLE "public"."retailers" OWNER TO "postgres";

-- ----------------------------
-- Records of retailers
-- ----------------------------
BEGIN;
INSERT INTO "public"."retailers" ("id", "name", "description", "website", "image", "created_at", "updated_at", "deleted_at") VALUES (1, 'Super Indo', 'Super Indo', 'www.superindo.co.id', '01K41ETZ8VQWR20854YAK1N0SP.png', '2025-09-01 01:39:02', '2025-09-01 01:39:02', NULL);
INSERT INTO "public"."retailers" ("id", "name", "description", "website", "image", "created_at", "updated_at", "deleted_at") VALUES (2, 'Indomaret', 'Indomaret', 'www.indomaret.co.id', '01K41F0D59WQENRY9FZPP7VN3P.png', '2025-09-01 01:42:00', '2025-09-01 01:42:00', NULL);
INSERT INTO "public"."retailers" ("id", "name", "description", "website", "image", "created_at", "updated_at", "deleted_at") VALUES (3, 'Hypermart', 'Hypermart', 'www.hypermart.co.id', '01K45FCVC0S9PNNZ8J5QJAD4DR.svg', '2025-09-02 15:05:46', '2025-09-02 15:05:46', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS "public"."sessions";
CREATE TABLE "public"."sessions" (
  "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "user_id" int8,
  "ip_address" varchar(45) COLLATE "pg_catalog"."default",
  "user_agent" text COLLATE "pg_catalog"."default",
  "payload" text COLLATE "pg_catalog"."default" NOT NULL,
  "last_activity" int4 NOT NULL
)
;
ALTER TABLE "public"."sessions" OWNER TO "postgres";

-- ----------------------------
-- Records of sessions
-- ----------------------------
BEGIN;
INSERT INTO "public"."sessions" ("id", "user_id", "ip_address", "user_agent", "payload", "last_activity") VALUES ('pAY5hVKhZRdaXwXaNWllTfSpl7WUVyhjlRQCr85t', 3, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoicnBDWmh0MlNVMXRLN3A0eFQ3ZDN0U3lHRXBjMFJ3bkoydTQzMDFRTCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4iO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkLjVVVWlMT3pGZWt0bWZyeElSb1o4dVRHT1F5S2hGeGx0R0NsZ3c5WldSNVNRd2hWc3k2S0MiO3M6NjoidGFibGVzIjthOjE6e3M6NDA6Ijc5MjRjNzM1MDA2ODI5NzhlZGNmZjJjZmUyZTA2NTgxX2NvbHVtbnMiO2E6MTI6e2k6MDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo0OiJkYXRlIjtzOjU6ImxhYmVsIjtzOjQ6IkRhdGUiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aToxO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjE4OiJpdGVtVW5pdC5pdGVtLm5hbWUiO3M6NToibGFiZWwiO3M6NDoiSXRlbSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjI7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTg6Iml0ZW1Vbml0LnVuaXQubmFtZSI7czo1OiJsYWJlbCI7czo0OiJVbml0IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MzthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czozMToiaXRlbVVuaXQudW5pdmVyc2FsX3Byb2R1Y3RfY29kZSI7czo1OiJsYWJlbCI7czozOiJVUEMiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTo0O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjI4OiJyZXRhaWxlckJyYW5jaC5yZXRhaWxlci5uYW1lIjtzOjU6ImxhYmVsIjtzOjg6IlJldGFpbGVyIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6NTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxOToicmV0YWlsZXJCcmFuY2gubmFtZSI7czo1OiJsYWJlbCI7czo2OiJCcmFuY2giO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTo2O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjU6InByaWNlIjtzOjU6ImxhYmVsIjtzOjU6IlByaWNlIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6NzthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo4OiJkaXNjb3VudCI7czo1OiJsYWJlbCI7czo4OiJEaXNjb3VudCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjg7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTA6InNlbGxfcHJpY2UiO3M6NToibGFiZWwiO3M6MTA6IlNlbGwgcHJpY2UiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTo5O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjEwOiJjcmVhdGVkX2F0IjtzOjU6ImxhYmVsIjtzOjEwOiJDcmVhdGVkIGF0IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MDtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MTtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO2I6MTt9aToxMDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMDoidXBkYXRlZF9hdCI7czo1OiJsYWJlbCI7czoxMDoiVXBkYXRlZCBhdCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjA7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjE7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtiOjE7fWk6MTE7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTA6ImRlbGV0ZWRfYXQiO3M6NToibGFiZWwiO3M6MTA6IkRlbGV0ZWQgYXQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjowO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjoxO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7YjoxO319fX0=', 1756864129);
INSERT INTO "public"."sessions" ("id", "user_id", "ip_address", "user_agent", "payload", "last_activity") VALUES ('JNT35u8DVSFyyKRARj5PZrVrsaAKMwOYRGcBcMj0', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicU5OeDRnWmJWZkpsaXptcHlFbmZnTWhvMlhrZ2I0b3NTWmNvNFNxTCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1756894756);
COMMIT;

-- ----------------------------
-- Table structure for units
-- ----------------------------
DROP TABLE IF EXISTS "public"."units";
CREATE TABLE "public"."units" (
  "id" int8 NOT NULL DEFAULT nextval('units_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;
ALTER TABLE "public"."units" OWNER TO "postgres";

-- ----------------------------
-- Records of units
-- ----------------------------
BEGIN;
INSERT INTO "public"."units" ("id", "name", "created_at", "updated_at", "deleted_at") VALUES (1, 'PC', '2025-09-01 14:03:25', '2025-09-01 14:03:25', NULL);
INSERT INTO "public"."units" ("id", "name", "created_at", "updated_at", "deleted_at") VALUES (2, 'BOTOL', '2025-09-02 15:03:11', '2025-09-02 15:03:11', NULL);
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "public"."users";
CREATE TABLE "public"."users" (
  "id" int8 NOT NULL DEFAULT nextval('users_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "email" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "email_verified_at" timestamp(0),
  "password" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "remember_token" varchar(100) COLLATE "pg_catalog"."default",
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;
ALTER TABLE "public"."users" OWNER TO "postgres";

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO "public"."users" ("id", "name", "email", "email_verified_at", "password", "remember_token", "created_at", "updated_at") VALUES (1, 'Test User', 'test@example.com', '2025-08-31 12:02:28', '$2y$12$IFaQsJDmxiQJFFV5POabBu80OPZyUraJCN1WLd/rTHbOCIW1225n6', '9PzzVHsBC1', '2025-08-31 12:02:28', '2025-08-31 12:02:28');
INSERT INTO "public"."users" ("id", "name", "email", "email_verified_at", "password", "remember_token", "created_at", "updated_at") VALUES (3, 'admin', 'admin@mail.com', NULL, '$2y$12$.5UUiLOzFektmfrxIRoZ8uTGOQyKhFxltGClgw9ZWR5SQwhVsy6KC', NULL, '2025-08-31 12:28:12', '2025-08-31 12:28:12');
INSERT INTO "public"."users" ("id", "name", "email", "email_verified_at", "password", "remember_token", "created_at", "updated_at") VALUES (2, 'Fatichul Iksan', 'fatichul.iksan@gmail.com', NULL, '$2y$12$YRYuV7eUwe3CeYK30ZCgcu3WTemLHreXGDwPijv2cjURVXTYN2qbS', '9Sne1Wgty9qmnjyJND4xbvhbEKm8AOC3QVlJ740dgCKqilZtvYfDKqb3LW54', '2025-08-31 12:06:03', '2025-08-31 12:06:03');
COMMIT;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."categories_id_seq"
OWNED BY "public"."categories"."id";
SELECT setval('"public"."categories_id_seq"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."failed_jobs_id_seq"
OWNED BY "public"."failed_jobs"."id";
SELECT setval('"public"."failed_jobs_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."item_units_id_seq"
OWNED BY "public"."item_units"."id";
SELECT setval('"public"."item_units_id_seq"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."items_id_seq"
OWNED BY "public"."items"."id";
SELECT setval('"public"."items_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."jobs_id_seq"
OWNED BY "public"."jobs"."id";
SELECT setval('"public"."jobs_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."migrations_id_seq"
OWNED BY "public"."migrations"."id";
SELECT setval('"public"."migrations_id_seq"', 11, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."prices_id_seq"
OWNED BY "public"."prices"."id";
SELECT setval('"public"."prices_id_seq"', 7, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."retailer_branches_id_seq"
OWNED BY "public"."retailer_branches"."id";
SELECT setval('"public"."retailer_branches_id_seq"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."retailers_id_seq"
OWNED BY "public"."retailers"."id";
SELECT setval('"public"."retailers_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."units_id_seq"
OWNED BY "public"."units"."id";
SELECT setval('"public"."units_id_seq"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."users_id_seq"
OWNED BY "public"."users"."id";
SELECT setval('"public"."users_id_seq"', 3, true);

-- ----------------------------
-- Primary Key structure for table cache
-- ----------------------------
ALTER TABLE "public"."cache" ADD CONSTRAINT "cache_pkey" PRIMARY KEY ("key");

-- ----------------------------
-- Primary Key structure for table cache_locks
-- ----------------------------
ALTER TABLE "public"."cache_locks" ADD CONSTRAINT "cache_locks_pkey" PRIMARY KEY ("key");

-- ----------------------------
-- Primary Key structure for table categories
-- ----------------------------
ALTER TABLE "public"."categories" ADD CONSTRAINT "categories_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table failed_jobs
-- ----------------------------
ALTER TABLE "public"."failed_jobs" ADD CONSTRAINT "failed_jobs_uuid_unique" UNIQUE ("uuid");

-- ----------------------------
-- Primary Key structure for table failed_jobs
-- ----------------------------
ALTER TABLE "public"."failed_jobs" ADD CONSTRAINT "failed_jobs_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table item_units
-- ----------------------------
ALTER TABLE "public"."item_units" ADD CONSTRAINT "item_units_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table items
-- ----------------------------
ALTER TABLE "public"."items" ADD CONSTRAINT "items_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table job_batches
-- ----------------------------
ALTER TABLE "public"."job_batches" ADD CONSTRAINT "job_batches_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table jobs
-- ----------------------------
CREATE INDEX "jobs_queue_index" ON "public"."jobs" USING btree (
  "queue" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table jobs
-- ----------------------------
ALTER TABLE "public"."jobs" ADD CONSTRAINT "jobs_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table migrations
-- ----------------------------
ALTER TABLE "public"."migrations" ADD CONSTRAINT "migrations_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table password_reset_tokens
-- ----------------------------
ALTER TABLE "public"."password_reset_tokens" ADD CONSTRAINT "password_reset_tokens_pkey" PRIMARY KEY ("email");

-- ----------------------------
-- Indexes structure for table password_resets
-- ----------------------------
CREATE INDEX "password_resets_email_index" ON "public"."password_resets" USING btree (
  "email" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table prices
-- ----------------------------
ALTER TABLE "public"."prices" ADD CONSTRAINT "prices_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table retailer_branches
-- ----------------------------
ALTER TABLE "public"."retailer_branches" ADD CONSTRAINT "retailer_branches_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table retailers
-- ----------------------------
ALTER TABLE "public"."retailers" ADD CONSTRAINT "retailers_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table sessions
-- ----------------------------
CREATE INDEX "sessions_last_activity_index" ON "public"."sessions" USING btree (
  "last_activity" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "sessions_user_id_index" ON "public"."sessions" USING btree (
  "user_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table sessions
-- ----------------------------
ALTER TABLE "public"."sessions" ADD CONSTRAINT "sessions_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table units
-- ----------------------------
ALTER TABLE "public"."units" ADD CONSTRAINT "units_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "users_email_unique" UNIQUE ("email");

-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "users_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table item_units
-- ----------------------------
ALTER TABLE "public"."item_units" ADD CONSTRAINT "item_units_item_id_foreign" FOREIGN KEY ("item_id") REFERENCES "public"."items" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."item_units" ADD CONSTRAINT "item_units_unit_id_foreign" FOREIGN KEY ("unit_id") REFERENCES "public"."units" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table prices
-- ----------------------------
ALTER TABLE "public"."prices" ADD CONSTRAINT "prices_item_unit_id_foreign" FOREIGN KEY ("item_unit_id") REFERENCES "public"."item_units" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."prices" ADD CONSTRAINT "prices_retailer_branch_id_foreign" FOREIGN KEY ("retailer_branch_id") REFERENCES "public"."retailer_branches" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table retailer_branches
-- ----------------------------
ALTER TABLE "public"."retailer_branches" ADD CONSTRAINT "retailer_branches_retailer_id_foreign" FOREIGN KEY ("retailer_id") REFERENCES "public"."retailers" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
