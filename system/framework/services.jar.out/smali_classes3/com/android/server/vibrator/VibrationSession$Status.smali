.class public final enum Lcom/android/server/vibrator/VibrationSession$Status;
.super Ljava/lang/Enum;
.source "VibrationSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibrationSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/vibrator/VibrationSession$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum CANCELLED_BINDER_DIED:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum CANCELLED_BY_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum CANCELLED_BY_FOREGROUND_USER:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum CANCELLED_BY_SCREEN_OFF:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum CANCELLED_BY_SETTINGS_UPDATE:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum CANCELLED_BY_UNKNOWN_REASON:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum CANCELLED_BY_USER:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum CANCELLED_SUPERSEDED:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum FINISHED:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum FINISHED_UNEXPECTED:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum FORWARDED_TO_INPUT_DEVICES:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum IGNORED_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum IGNORED_BACKGROUND:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum IGNORED_ERROR_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum IGNORED_ERROR_CANCELLING:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum IGNORED_ERROR_SCHEDULING:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum IGNORED_ERROR_TOKEN:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum IGNORED_FOR_EXTERNAL:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum IGNORED_FOR_HIGHER_IMPORTANCE:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum IGNORED_FOR_ONGOING:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum IGNORED_FOR_POWER:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum IGNORED_FOR_RINGER_MODE:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum IGNORED_FOR_SETTINGS:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum IGNORED_FROM_VIRTUAL_DEVICE:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum IGNORED_MISSING_PERMISSION:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum IGNORED_ON_WIRELESS_CHARGER:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum IGNORED_SUPERSEDED:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum RUNNING:Lcom/android/server/vibrator/VibrationSession$Status;

.field public static final enum UNKNOWN:Lcom/android/server/vibrator/VibrationSession$Status;


# instance fields
.field private final mProtoEnumValue:I


# direct methods
.method private static synthetic $values()[Lcom/android/server/vibrator/VibrationSession$Status;
    .locals 31

    .line 132
    sget-object v1, Lcom/android/server/vibrator/VibrationSession$Status;->UNKNOWN:Lcom/android/server/vibrator/VibrationSession$Status;

    sget-object v2, Lcom/android/server/vibrator/VibrationSession$Status;->RUNNING:Lcom/android/server/vibrator/VibrationSession$Status;

    sget-object v3, Lcom/android/server/vibrator/VibrationSession$Status;->FINISHED:Lcom/android/server/vibrator/VibrationSession$Status;

    sget-object v4, Lcom/android/server/vibrator/VibrationSession$Status;->FINISHED_UNEXPECTED:Lcom/android/server/vibrator/VibrationSession$Status;

    sget-object v5, Lcom/android/server/vibrator/VibrationSession$Status;->FORWARDED_TO_INPUT_DEVICES:Lcom/android/server/vibrator/VibrationSession$Status;

    sget-object v6, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BINDER_DIED:Lcom/android/server/vibrator/VibrationSession$Status;

    sget-object v7, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_SCREEN_OFF:Lcom/android/server/vibrator/VibrationSession$Status;

    sget-object v8, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_SETTINGS_UPDATE:Lcom/android/server/vibrator/VibrationSession$Status;

    sget-object v9, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_USER:Lcom/android/server/vibrator/VibrationSession$Status;

    sget-object v10, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_FOREGROUND_USER:Lcom/android/server/vibrator/VibrationSession$Status;

    sget-object v11, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_UNKNOWN_REASON:Lcom/android/server/vibrator/VibrationSession$Status;

    sget-object v12, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_SUPERSEDED:Lcom/android/server/vibrator/VibrationSession$Status;

    sget-object v13, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;

    sget-object v14, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;

    sget-object v15, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_CANCELLING:Lcom/android/server/vibrator/VibrationSession$Status;

    sget-object v16, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_SCHEDULING:Lcom/android/server/vibrator/VibrationSession$Status;

    sget-object v17, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_TOKEN:Lcom/android/server/vibrator/VibrationSession$Status;

    sget-object v18, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;

    sget-object v19, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_BACKGROUND:Lcom/android/server/vibrator/VibrationSession$Status;

    sget-object v20, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_MISSING_PERMISSION:Lcom/android/server/vibrator/VibrationSession$Status;

    sget-object v21, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/VibrationSession$Status;

    sget-object v22, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_EXTERNAL:Lcom/android/server/vibrator/VibrationSession$Status;

    sget-object v23, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_HIGHER_IMPORTANCE:Lcom/android/server/vibrator/VibrationSession$Status;

    sget-object v24, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_ONGOING:Lcom/android/server/vibrator/VibrationSession$Status;

    sget-object v25, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_POWER:Lcom/android/server/vibrator/VibrationSession$Status;

    sget-object v26, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_RINGER_MODE:Lcom/android/server/vibrator/VibrationSession$Status;

    sget-object v27, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_SETTINGS:Lcom/android/server/vibrator/VibrationSession$Status;

    sget-object v28, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_SUPERSEDED:Lcom/android/server/vibrator/VibrationSession$Status;

    sget-object v29, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FROM_VIRTUAL_DEVICE:Lcom/android/server/vibrator/VibrationSession$Status;

    sget-object v30, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ON_WIRELESS_CHARGER:Lcom/android/server/vibrator/VibrationSession$Status;

    filled-new-array/range {v1 .. v30}, [Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 133
    new-instance v0, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->UNKNOWN:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 134
    new-instance v0, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v1, "RUNNING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->RUNNING:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 135
    new-instance v0, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v1, "FINISHED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->FINISHED:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 136
    new-instance v0, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v1, "FINISHED_UNEXPECTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->FINISHED_UNEXPECTED:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 137
    new-instance v0, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v1, "FORWARDED_TO_INPUT_DEVICES"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->FORWARDED_TO_INPUT_DEVICES:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 138
    new-instance v0, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v1, "CANCELLED_BINDER_DIED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BINDER_DIED:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 139
    new-instance v0, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v1, "CANCELLED_BY_SCREEN_OFF"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_SCREEN_OFF:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 140
    new-instance v0, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v1, "CANCELLED_BY_SETTINGS_UPDATE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_SETTINGS_UPDATE:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 141
    new-instance v0, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v1, "CANCELLED_BY_USER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_USER:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 142
    new-instance v0, Lcom/android/server/vibrator/VibrationSession$Status;

    const/16 v1, 0x1e

    const-string v2, "CANCELLED_BY_FOREGROUND_USER"

    const/16 v3, 0x9

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_FOREGROUND_USER:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 143
    new-instance v0, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v1, "CANCELLED_BY_UNKNOWN_REASON"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_UNKNOWN_REASON:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 144
    new-instance v0, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v1, "CANCELLED_SUPERSEDED"

    const/16 v3, 0xb

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_SUPERSEDED:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 145
    new-instance v0, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v1, "CANCELLED_BY_APP_OPS"

    const/16 v2, 0xc

    const/16 v4, 0x1d

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 146
    new-instance v0, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v1, "IGNORED_ERROR_APP_OPS"

    const/16 v5, 0xd

    invoke-direct {v0, v1, v5, v3}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 147
    new-instance v0, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v1, "IGNORED_ERROR_CANCELLING"

    const/16 v3, 0xe

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_CANCELLING:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 148
    new-instance v0, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v1, "IGNORED_ERROR_SCHEDULING"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v5}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_SCHEDULING:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 149
    new-instance v0, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v1, "IGNORED_ERROR_TOKEN"

    const/16 v5, 0x10

    invoke-direct {v0, v1, v5, v3}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_TOKEN:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 150
    new-instance v0, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v1, "IGNORED_APP_OPS"

    const/16 v3, 0x11

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 151
    new-instance v0, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v1, "IGNORED_BACKGROUND"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, v5}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_BACKGROUND:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 152
    new-instance v0, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v1, "IGNORED_MISSING_PERMISSION"

    const/16 v3, 0x13

    const/16 v5, 0x1c

    invoke-direct {v0, v1, v3, v5}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_MISSING_PERMISSION:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 153
    new-instance v0, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v1, "IGNORED_UNSUPPORTED"

    const/16 v6, 0x14

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 154
    new-instance v0, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v1, "IGNORED_FOR_EXTERNAL"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_EXTERNAL:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 155
    new-instance v0, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v1, "IGNORED_FOR_HIGHER_IMPORTANCE"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2, v6}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_HIGHER_IMPORTANCE:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 156
    new-instance v0, Lcom/android/server/vibrator/VibrationSession$Status;

    const/16 v1, 0x17

    const/16 v2, 0x15

    const-string v3, "IGNORED_FOR_ONGOING"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_ONGOING:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 157
    new-instance v0, Lcom/android/server/vibrator/VibrationSession$Status;

    const/16 v1, 0x18

    const/16 v2, 0x16

    const-string v3, "IGNORED_FOR_POWER"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_POWER:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 158
    new-instance v0, Lcom/android/server/vibrator/VibrationSession$Status;

    const/16 v1, 0x19

    const/16 v2, 0x17

    const-string v3, "IGNORED_FOR_RINGER_MODE"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_RINGER_MODE:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 159
    new-instance v0, Lcom/android/server/vibrator/VibrationSession$Status;

    const/16 v1, 0x1a

    const/16 v2, 0x18

    const-string v3, "IGNORED_FOR_SETTINGS"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_SETTINGS:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 160
    new-instance v0, Lcom/android/server/vibrator/VibrationSession$Status;

    const/16 v1, 0x1b

    const/16 v2, 0x19

    const-string v3, "IGNORED_SUPERSEDED"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_SUPERSEDED:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 161
    new-instance v0, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v1, "IGNORED_FROM_VIRTUAL_DEVICE"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v5, v2}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FROM_VIRTUAL_DEVICE:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 162
    new-instance v0, Lcom/android/server/vibrator/VibrationSession$Status;

    const-string v1, "IGNORED_ON_WIRELESS_CHARGER"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v4, v2}, Lcom/android/server/vibrator/VibrationSession$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ON_WIRELESS_CHARGER:Lcom/android/server/vibrator/VibrationSession$Status;

    .line 132
    invoke-static {}, Lcom/android/server/vibrator/VibrationSession$Status;->$values()[Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v0

    sput-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->$VALUES:[Lcom/android/server/vibrator/VibrationSession$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 166
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 167
    iput p3, p0, Lcom/android/server/vibrator/VibrationSession$Status;->mProtoEnumValue:I

    .line 168
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/vibrator/VibrationSession$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 132
    const-class v0, Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibrationSession$Status;

    return-object v0
.end method

.method public static values()[Lcom/android/server/vibrator/VibrationSession$Status;
    .locals 1

    .line 132
    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->$VALUES:[Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {v0}, [Lcom/android/server/vibrator/VibrationSession$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/vibrator/VibrationSession$Status;

    return-object v0
.end method


# virtual methods
.method public getProtoEnumValue()I
    .locals 1

    .line 171
    iget v0, p0, Lcom/android/server/vibrator/VibrationSession$Status;->mProtoEnumValue:I

    return v0
.end method
