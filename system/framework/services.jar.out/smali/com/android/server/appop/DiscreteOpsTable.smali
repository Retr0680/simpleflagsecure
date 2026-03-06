.class final Lcom/android/server/appop/DiscreteOpsTable;
.super Ljava/lang/Object;
.source "DiscreteOpsTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appop/DiscreteOpsTable$Columns;
    }
.end annotation


# static fields
.field static final ACCESS_DURATION_INDEX:I = 0x7

.field static final ACCESS_TIME_INDEX:I = 0x6

.field static final ATTRIBUTION_FLAGS_INDEX:I = 0xa

.field static final ATTRIBUTION_TAG_INDEX:I = 0x5

.field static final CHAIN_ID_INDEX:I = 0xb

.field static final CREATE_INDEX_SQL:Ljava/lang/String; = "CREATE INDEX IF NOT EXISTS app_op_access_index ON app_op_accesses (access_time, uid, op_code)"

.field static final CREATE_TABLE_SQL:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS app_op_accesses(id INTEGER PRIMARY KEY,uid INTEGER,package_name TEXT,device_id TEXT NOT NULL,op_code INTEGER,attribution_tag TEXT,access_time INTEGER,access_duration INTEGER,uid_state INTEGER,op_flags INTEGER,attribution_flags INTEGER,chain_id INTEGER)"

.field static final DELETE_DATA_FOR_UID_PACKAGE:Ljava/lang/String; = "DELETE FROM app_op_accesses WHERE uid = ? AND package_name = ?"

.field static final DELETE_TABLE_DATA:Ljava/lang/String; = "DELETE FROM app_op_accesses"

.field static final DELETE_TABLE_DATA_BEFORE_ACCESS_TIME:Ljava/lang/String; = "DELETE FROM app_op_accesses WHERE access_time < ?"

.field static final DEVICE_ID_INDEX:I = 0x3

.field private static final INDEX_APP_OP:Ljava/lang/String; = "app_op_access_index"

.field static final INSERT_TABLE_SQL:Ljava/lang/String; = "INSERT INTO app_op_accesses(uid, package_name, device_id, op_code, attribution_tag, access_time, access_duration, uid_state, op_flags, attribution_flags, chain_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

.field static final OFFSET_ACCESS_TIME:Ljava/lang/String; = "UPDATE app_op_accesses SET access_time = ACCESS_TIME - ?"

.field static final OP_CODE_INDEX:I = 0x4

.field static final OP_FLAGS_INDEX:I = 0x9

.field static final PACKAGE_NAME_INDEX:I = 0x2

.field static final SELECT_MAX_ATTRIBUTION_CHAIN_ID:Ljava/lang/String; = "SELECT MAX(chain_id) FROM app_op_accesses"

.field static final SELECT_TABLE_DATA:Ljava/lang/String; = "SELECT DISTINCT uid,package_name,device_id,op_code,attribution_tag,access_time,access_duration,uid_state,op_flags,attribution_flags,chain_id FROM app_op_accesses"

.field private static final TABLE_NAME:Ljava/lang/String; = "app_op_accesses"

.field static final UID_INDEX:I = 0x1

.field static final UID_STATE_INDEX:I = 0x8


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
