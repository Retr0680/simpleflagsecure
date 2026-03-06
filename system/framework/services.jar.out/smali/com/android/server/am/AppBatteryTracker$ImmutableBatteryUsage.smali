.class final Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
.super Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
.source "AppBatteryTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppBatteryTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ImmutableBatteryUsage"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1159
    invoke-direct {p0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>()V

    .line 1160
    return-void
.end method

.method constructor <init>(DDDDD)V
    .locals 0
    .param p1, "unspecifiedUsage"    # D
    .param p3, "fgUsage"    # D
    .param p5, "bgUsage"    # D
    .param p7, "fgsUsage"    # D
    .param p9, "cachedUsage"    # D

    .line 1164
    invoke-direct/range {p0 .. p10}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(DDDDD)V

    .line 1165
    return-void
.end method

.method constructor <init>(Landroid/os/UidBatteryConsumer;Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;)V
    .locals 0
    .param p1, "consumer"    # Landroid/os/UidBatteryConsumer;
    .param p2, "policy"    # Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    .line 1181
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Landroid/os/UidBatteryConsumer;Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;)V

    .line 1182
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V
    .locals 0
    .param p1, "other"    # Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 1176
    invoke-direct {p0, p1}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    .line 1177
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;D)V
    .locals 0
    .param p1, "other"    # Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .param p2, "scale"    # D

    .line 1172
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;D)V

    .line 1173
    return-void
.end method

.method constructor <init>([D)V
    .locals 0
    .param p1, "usage"    # [D

    .line 1168
    invoke-direct {p0, p1}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>([D)V

    .line 1169
    return-void
.end method


# virtual methods
.method add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .locals 2
    .param p1, "other"    # Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 1191
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Readonly"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method mutate()Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .locals 1

    .line 1210
    new-instance v0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    return-object v0
.end method

.method scale(D)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .locals 2
    .param p1, "scale"    # D

    .line 1201
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Readonly"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setPercentage([D)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .locals 2
    .param p1, "percentage"    # [D

    .line 1206
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Readonly"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setTo(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .locals 2
    .param p1, "other"    # Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 1186
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Readonly"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method subtract(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .locals 2
    .param p1, "other"    # Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 1196
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Readonly"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
