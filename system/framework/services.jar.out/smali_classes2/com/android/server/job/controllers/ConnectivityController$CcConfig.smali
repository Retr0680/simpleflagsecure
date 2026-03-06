.class Lcom/android/server/job/controllers/ConnectivityController$CcConfig;
.super Ljava/lang/Object;
.source "ConnectivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/ConnectivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CcConfig"
.end annotation


# static fields
.field private static final CC_CONFIG_PREFIX:Ljava/lang/String; = "conn_"

.field private static final DEFAULT_AVOID_UNDEFINED_TRANSPORT_AFFINITY:Z = false

.field private static final DEFAULT_NETWORK_ACTIVATION_EXPIRATION_MS:J = 0x2710L

.field private static final DEFAULT_NETWORK_ACTIVATION_MAX_WAIT_TIME_MS:J = 0x1c61a0L

.field static final KEY_AVOID_UNDEFINED_TRANSPORT_AFFINITY:Ljava/lang/String; = "conn_avoid_undefined_transport_affinity"

.field private static final KEY_NETWORK_ACTIVATION_EXPIRATION_MS:Ljava/lang/String; = "conn_network_activation_expiration_ms"

.field private static final KEY_NETWORK_ACTIVATION_MAX_WAIT_TIME_MS:Ljava/lang/String; = "conn_network_activation_max_wait_time_ms"


# instance fields
.field public AVOID_UNDEFINED_TRANSPORT_AFFINITY:Z

.field public NETWORK_ACTIVATION_EXPIRATION_MS:J

.field public NETWORK_ACTIVATION_MAX_WAIT_TIME_MS:J

.field private mFlexIsEnabled:Z

.field private mShouldReprocessNetworkCapabilities:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmFlexIsEnabled(Lcom/android/server/job/controllers/ConnectivityController$CcConfig;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->mFlexIsEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmShouldReprocessNetworkCapabilities(Lcom/android/server/job/controllers/ConnectivityController$CcConfig;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->mShouldReprocessNetworkCapabilities:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmFlexIsEnabled(Lcom/android/server/job/controllers/ConnectivityController$CcConfig;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->mFlexIsEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmShouldReprocessNetworkCapabilities(Lcom/android/server/job/controllers/ConnectivityController$CcConfig;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->mShouldReprocessNetworkCapabilities:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mdump(Lcom/android/server/job/controllers/ConnectivityController$CcConfig;Landroid/util/IndentingPrintWriter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/job/controllers/ConnectivityController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1985
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1986
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->mFlexIsEnabled:Z

    .line 1988
    iput-boolean v0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->mShouldReprocessNetworkCapabilities:Z

    .line 2012
    iput-boolean v0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->AVOID_UNDEFINED_TRANSPORT_AFFINITY:Z

    .line 2019
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->NETWORK_ACTIVATION_EXPIRATION_MS:J

    .line 2025
    const-wide/32 v0, 0x1c61a0

    iput-wide v0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->NETWORK_ACTIVATION_MAX_WAIT_TIME_MS:J

    return-void
.end method

.method private dump(Landroid/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 2060
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2061
    const-class v0, Lcom/android/server/job/controllers/ConnectivityController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2062
    const-string v0, ":"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2063
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2065
    iget-boolean v0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->AVOID_UNDEFINED_TRANSPORT_AFFINITY:Z

    .line 2066
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2065
    const-string v1, "conn_avoid_undefined_transport_affinity"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 2066
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2067
    iget-wide v0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->NETWORK_ACTIVATION_EXPIRATION_MS:J

    .line 2068
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2067
    const-string v1, "conn_network_activation_expiration_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 2068
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2069
    iget-wide v0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->NETWORK_ACTIVATION_MAX_WAIT_TIME_MS:J

    .line 2070
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2069
    const-string v1, "conn_network_activation_max_wait_time_ms"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    .line 2070
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2072
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2073
    return-void
.end method


# virtual methods
.method public processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
    .locals 5
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;
    .param p2, "key"    # Ljava/lang/String;

    .line 2031
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "conn_avoid_undefined_transport_affinity"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v0, "conn_network_activation_max_wait_time_ms"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "conn_network_activation_expiration_ms"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 2049
    :pswitch_0
    const-wide/32 v0, 0x1c61a0

    invoke-virtual {p1, p2, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2051
    .local v0, "maxWaitMs":J
    iget-wide v3, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->NETWORK_ACTIVATION_MAX_WAIT_TIME_MS:J

    cmp-long v3, v3, v0

    if-eqz v3, :cond_1

    .line 2052
    iput-wide v0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->NETWORK_ACTIVATION_MAX_WAIT_TIME_MS:J

    .line 2053
    iput-boolean v2, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->mShouldReprocessNetworkCapabilities:Z

    goto :goto_2

    .line 2041
    .end local v0    # "maxWaitMs":J
    :pswitch_1
    const-wide/16 v0, 0x2710

    invoke-virtual {p1, p2, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2043
    .local v0, "gracePeriodMs":J
    iget-wide v2, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->NETWORK_ACTIVATION_EXPIRATION_MS:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    .line 2044
    iput-wide v0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->NETWORK_ACTIVATION_EXPIRATION_MS:J

    goto :goto_2

    .line 2033
    .end local v0    # "gracePeriodMs":J
    :pswitch_2
    invoke-virtual {p1, p2, v1}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2035
    .local v0, "avoid":Z
    iget-boolean v1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->AVOID_UNDEFINED_TRANSPORT_AFFINITY:Z

    if-eq v1, v0, :cond_1

    .line 2036
    iput-boolean v0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->AVOID_UNDEFINED_TRANSPORT_AFFINITY:Z

    .line 2037
    iput-boolean v2, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->mShouldReprocessNetworkCapabilities:Z

    .line 2057
    .end local v0    # "avoid":Z
    :cond_1
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x48c9c28f -> :sswitch_2
        0x1f3fb46e -> :sswitch_1
        0x3c4b114a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
