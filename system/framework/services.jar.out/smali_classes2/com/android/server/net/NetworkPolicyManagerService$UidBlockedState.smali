.class final Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UidBlockedState"
.end annotation


# static fields
.field private static final ALLOWED_REASONS:[I

.field private static final BLOCKED_REASONS:[I


# instance fields
.field public allowedReasons:I

.field public blockedReasons:I

.field public effectiveBlockedReasons:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6892
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->BLOCKED_REASONS:[I

    .line 6904
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->ALLOWED_REASONS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x20
        0x40
        0x10000
        0x20000
        0x40000
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x20
        0x4
        0x8
        0x10
        0x40
        0x80
        0x10000
        0x20000
        0x40000
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .line 6796
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;-><init>(III)V

    .line 6797
    return-void
.end method

.method private constructor <init>(III)V
    .locals 0
    .param p1, "blockedReasons"    # I
    .param p2, "allowedReasons"    # I
    .param p3, "effectiveBlockedReasons"    # I

    .line 6789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6790
    iput p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 6791
    iput p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    .line 6792
    iput p3, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 6793
    return-void
.end method

.method private static allowedReasonToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "allowedReason"    # I

    .line 6947
    sparse-switch p0, :sswitch_data_0

    .line 6973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown allowedReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 6974
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6971
    :sswitch_0
    const-string v0, "METERED_FOREGROUND"

    return-object v0

    .line 6969
    :sswitch_1
    const-string v0, "METERED_SYSTEM"

    return-object v0

    .line 6967
    :sswitch_2
    const-string v0, "METERED_USER_EXEMPTED"

    return-object v0

    .line 6965
    :sswitch_3
    const-string v0, "NOT_IN_BACKGROUND"

    return-object v0

    .line 6963
    :sswitch_4
    const-string v0, "LOW_POWER_STANDBY_ALLOWLIST"

    return-object v0

    .line 6955
    :sswitch_5
    const-string v0, "TOP"

    return-object v0

    .line 6961
    :sswitch_6
    const-string v0, "RESTRICTED_MODE_PERMISSIONS"

    return-object v0

    .line 6959
    :sswitch_7
    const-string v0, "POWER_SAVE_EXCEPT_IDLE_ALLOWLIST"

    return-object v0

    .line 6957
    :sswitch_8
    const-string v0, "POWER_SAVE_ALLOWLIST"

    return-object v0

    .line 6953
    :sswitch_9
    const-string v0, "FOREGROUND"

    return-object v0

    .line 6951
    :sswitch_a
    const-string v0, "SYSTEM"

    return-object v0

    .line 6949
    :sswitch_b
    const-string v0, "NONE"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0x1 -> :sswitch_a
        0x2 -> :sswitch_9
        0x4 -> :sswitch_8
        0x8 -> :sswitch_7
        0x10 -> :sswitch_6
        0x20 -> :sswitch_5
        0x40 -> :sswitch_4
        0x80 -> :sswitch_3
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static allowedReasonsToString(I)Ljava/lang/String;
    .locals 8
    .param p0, "allowedReasons"    # I

    .line 6999
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 7000
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasonToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7002
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7003
    .local v1, "sb":Ljava/lang/StringBuilder;
    sget-object v2, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->ALLOWED_REASONS:[I

    array-length v3, v2

    :goto_0
    const-string/jumbo v4, "|"

    const-string v5, ""

    if-ge v0, v3, :cond_3

    aget v6, v2, v0

    .line 7004
    .local v6, "reason":I
    and-int v7, p0, v6

    if-eqz v7, :cond_2

    .line 7005
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-nez v7, :cond_1

    move-object v4, v5

    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7006
    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7007
    not-int v4, v6

    and-int/2addr p0, v4

    .line 7003
    .end local v6    # "reason":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7010
    :cond_3
    if-eqz p0, :cond_5

    .line 7011
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_4

    move-object v4, v5

    :cond_4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7012
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown allowedReasons: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NetworkPolicy"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 7015
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blockedReasonToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "blockedReason"    # I

    .line 6919
    sparse-switch p0, :sswitch_data_0

    .line 6941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown blockedReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 6942
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6939
    :sswitch_0
    const-string v0, "METERED_ADMIN_DISABLED"

    return-object v0

    .line 6937
    :sswitch_1
    const-string v0, "METERED_USER_RESTRICTED"

    return-object v0

    .line 6935
    :sswitch_2
    const-string v0, "DATA_SAVER"

    return-object v0

    .line 6933
    :sswitch_3
    const-string v0, "APP_BACKGROUND"

    return-object v0

    .line 6931
    :sswitch_4
    const-string v0, "LOW_POWER_STANDBY"

    return-object v0

    .line 6929
    :sswitch_5
    const-string v0, "RESTRICTED_MODE"

    return-object v0

    .line 6927
    :sswitch_6
    const-string v0, "APP_STANDBY"

    return-object v0

    .line 6925
    :sswitch_7
    const-string v0, "DOZE"

    return-object v0

    .line 6923
    :sswitch_8
    const-string v0, "BATTERY_SAVER"

    return-object v0

    .line 6921
    :sswitch_9
    const-string v0, "NONE"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_9
        0x1 -> :sswitch_8
        0x2 -> :sswitch_7
        0x4 -> :sswitch_6
        0x8 -> :sswitch_5
        0x20 -> :sswitch_4
        0x40 -> :sswitch_3
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static blockedReasonsToString(I)Ljava/lang/String;
    .locals 8
    .param p0, "blockedReasons"    # I

    .line 6979
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 6980
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasonToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6982
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6983
    .local v1, "sb":Ljava/lang/StringBuilder;
    sget-object v2, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->BLOCKED_REASONS:[I

    array-length v3, v2

    :goto_0
    const-string/jumbo v4, "|"

    const-string v5, ""

    if-ge v0, v3, :cond_3

    aget v6, v2, v0

    .line 6984
    .local v6, "reason":I
    and-int v7, p0, v6

    if-eqz v7, :cond_2

    .line 6985
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-nez v7, :cond_1

    move-object v4, v5

    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6986
    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6987
    not-int v4, v6

    and-int/2addr p0, v4

    .line 6983
    .end local v6    # "reason":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6990
    :cond_3
    if-eqz p0, :cond_5

    .line 6991
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_4

    move-object v4, v5

    :cond_4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6992
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown blockedReasons: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NetworkPolicy"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 6995
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getAllowedReasonsForProcState(I)I
    .locals 1
    .param p0, "procState"    # I

    .line 6864
    const/4 v0, 0x3

    if-gt p0, v0, :cond_0

    .line 6865
    const v0, 0x400a2

    return v0

    .line 6867
    :cond_0
    const/4 v0, 0x5

    if-gt p0, v0, :cond_1

    .line 6868
    const v0, 0x40082

    return v0

    .line 6870
    :cond_1
    const/16 v0, 0xc

    if-ge p0, v0, :cond_2

    .line 6871
    const/16 v0, 0x80

    return v0

    .line 6873
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method static getEffectiveBlockedReasons(II)I
    .locals 3
    .param p0, "blockedReasons"    # I
    .param p1, "allowedReasons"    # I

    .line 6813
    move v0, p0

    .line 6815
    .local v0, "effectiveBlockedReasons":I
    if-nez p0, :cond_0

    .line 6816
    return v0

    .line 6818
    :cond_0
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    .line 6819
    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    .line 6821
    :cond_1
    const/high16 v1, 0x20000

    and-int/2addr v1, p1

    if-eqz v1, :cond_2

    .line 6822
    const v1, 0xffff

    and-int/2addr v0, v1

    .line 6824
    :cond_2
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_3

    .line 6825
    and-int/lit8 v0, v0, -0x2

    .line 6826
    and-int/lit8 v0, v0, -0x3

    .line 6827
    and-int/lit8 v0, v0, -0x5

    .line 6829
    :cond_3
    const/high16 v1, 0x40000

    and-int/2addr v1, p1

    const v2, -0x10001

    if-eqz v1, :cond_4

    .line 6830
    and-int/2addr v0, v2

    .line 6831
    const v1, -0x20001

    and-int/2addr v0, v1

    .line 6833
    :cond_4
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_5

    .line 6834
    and-int/lit8 v0, v0, -0x21

    .line 6836
    :cond_5
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_6

    .line 6837
    and-int/lit8 v0, v0, -0x2

    .line 6838
    and-int/lit8 v0, v0, -0x3

    .line 6839
    and-int/lit8 v0, v0, -0x5

    .line 6840
    and-int/lit8 v0, v0, -0x41

    .line 6842
    :cond_6
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_7

    .line 6843
    and-int/lit8 v0, v0, -0x2

    .line 6844
    and-int/lit8 v0, v0, -0x5

    .line 6845
    and-int/lit8 v0, v0, -0x41

    .line 6847
    :cond_7
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_8

    .line 6848
    and-int/lit8 v0, v0, -0x9

    .line 6850
    :cond_8
    const/high16 v1, 0x10000

    and-int/2addr v1, p1

    if-eqz v1, :cond_9

    .line 6851
    and-int/2addr v0, v2

    .line 6853
    :cond_9
    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_a

    .line 6854
    and-int/lit8 v0, v0, -0x21

    .line 6856
    :cond_a
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_b

    .line 6857
    and-int/lit8 v0, v0, -0x41

    .line 6860
    :cond_b
    return v0
.end method

.method public static toString(III)Ljava/lang/String;
    .locals 3
    .param p0, "blockedReasons"    # I
    .param p1, "allowedReasons"    # I
    .param p2, "effectiveBlockedReasons"    # I

    .line 6883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6884
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6885
    const-string v1, "blocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasonsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6886
    const-string v2, "allowed="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasonsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6887
    const-string v1, "effective="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasonsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6888
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6889
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public copyFrom(Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;)V
    .locals 1
    .param p1, "uidBlockedState"    # Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;

    .line 7019
    iget v0, p1, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 7020
    iget v0, p1, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    .line 7021
    iget v0, p1, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 7022
    return-void
.end method

.method public deriveUidRules()I
    .locals 6

    .line 7025
    const/4 v0, 0x0

    .line 7026
    .local v0, "uidRule":I
    iget v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    .line 7027
    or-int/lit16 v0, v0, 0x400

    .line 7030
    :cond_0
    const/16 v1, 0x67

    .line 7035
    .local v1, "powerBlockedReasons":I
    iget v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_1

    .line 7036
    or-int/lit8 v0, v0, 0x40

    goto :goto_0

    .line 7037
    :cond_1
    iget v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_2

    .line 7038
    or-int/lit8 v0, v0, 0x20

    .line 7043
    :cond_2
    :goto_0
    const/high16 v2, 0x60000

    .line 7045
    .local v2, "meteredBlockedReasons":I
    iget v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_3

    .line 7046
    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 7047
    :cond_3
    iget v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    const/high16 v4, 0x40000

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_4

    .line 7049
    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 7050
    :cond_4
    iget v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    const/high16 v5, 0x10000

    and-int/2addr v3, v5

    if-eqz v3, :cond_6

    .line 7051
    iget v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_5

    .line 7052
    or-int/lit8 v0, v0, 0x20

    goto :goto_1

    .line 7053
    :cond_5
    iget v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_6

    .line 7054
    or-int/lit8 v0, v0, 0x2

    .line 7057
    :cond_6
    :goto_1
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$sfgetLOGV()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 7058
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uidBlockedState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " -> uidRule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7059
    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7058
    const-string v4, "NetworkPolicy"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7061
    :cond_7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 6878
    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    iget v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    iget v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    invoke-static {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->toString(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateEffectiveBlockedReasons()V
    .locals 3

    .line 6800
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$sfgetLOGV()Z

    move-result v0

    const-string v1, "NetworkPolicy"

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    if-nez v0, :cond_0

    .line 6801
    const-string/jumbo v0, "updateEffectiveBlockedReasons(): no blocked reasons"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6803
    :cond_0
    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    iget v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    invoke-static {v0, v2}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->getEffectiveBlockedReasons(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 6804
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$sfgetLOGV()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEffectiveBlockedReasons(): blockedReasons="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 6806
    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", effectiveReasons="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 6807
    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6805
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6809
    :cond_1
    return-void
.end method
