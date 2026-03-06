.class Lcom/android/server/utils/AnrTimer$Injector;
.super Ljava/lang/Object;
.source "AnrTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/utils/AnrTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method freezerEnabled()Z
    .locals 1

    .line 157
    invoke-static {}, Lcom/android/server/utils/AnrTimer;->-$$Nest$smfreezerFeatureEnabled()Z

    move-result v0

    return v0
.end method

.method serviceEnabled()Z
    .locals 1

    .line 153
    invoke-static {}, Lcom/android/server/utils/AnrTimer;->-$$Nest$smanrTimerServiceEnabled()Z

    move-result v0

    return v0
.end method

.method traceEnabled()Z
    .locals 1

    .line 161
    invoke-static {}, Lcom/android/server/utils/AnrTimer;->traceFeatureEnabled()Z

    move-result v0

    return v0
.end method
