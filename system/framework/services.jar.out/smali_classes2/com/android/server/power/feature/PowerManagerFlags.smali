.class public Lcom/android/server/power/feature/PowerManagerFlags;
.super Ljava/lang/Object;
.source "PowerManagerFlags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/feature/PowerManagerFlags$FlagState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "PowerManagerFlags"


# instance fields
.field private final mDisableFrozenProcessWakelocks:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

.field private final mEarlyScreenTimeoutDetectorFlagState:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

.field private final mEnableScreenTimeoutPolicyListenerApi:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

.field private final mFrameworkWakelockInfo:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

.field private final mImproveWakelockLatency:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

.field private final mMoveWscLoggingToNotifier:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

.field private final mPerDisplayWakeByTouch:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

.field private final mPolicyReasonInDisplayPowerRequest:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

.field private final mWakelockAttributionViaWorkchain:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.power.feature.flags.enable_early_screen_timeout_detector"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/power/feature/PowerManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mEarlyScreenTimeoutDetectorFlagState:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    .line 40
    new-instance v0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.power.feature.flags.enable_screen_timeout_policy_listener_api"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/power/feature/PowerManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mEnableScreenTimeoutPolicyListenerApi:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    .line 45
    new-instance v0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.power.feature.flags.improve_wakelock_latency"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/power/feature/PowerManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mImproveWakelockLatency:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    .line 50
    new-instance v0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.power.feature.flags.per_display_wake_by_touch"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/power/feature/PowerManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mPerDisplayWakeByTouch:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    .line 55
    new-instance v0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v2, "com.android.server.power.feature.flags.framework_wakelock_info"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/power/feature/PowerManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mFrameworkWakelockInfo:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    .line 58
    new-instance v0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.power.feature.flags.policy_reason_in_display_power_request"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/power/feature/PowerManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mPolicyReasonInDisplayPowerRequest:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    .line 63
    new-instance v0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.power.feature.flags.move_wsc_logging_to_notifier"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/power/feature/PowerManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mMoveWscLoggingToNotifier:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    .line 66
    new-instance v0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.power.feature.flags.wakelock_attribution_via_workchain"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/power/feature/PowerManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mWakelockAttributionViaWorkchain:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    .line 70
    new-instance v0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v2, "com.android.server.power.feature.flags.disable_frozen_process_wakelocks"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/power/feature/PowerManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mDisableFrozenProcessWakelocks:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 139
    const-string v0, "PowerManagerFlags:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mEarlyScreenTimeoutDetectorFlagState:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mImproveWakelockLatency:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mPerDisplayWakeByTouch:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mFrameworkWakelockInfo:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mMoveWscLoggingToNotifier:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mWakelockAttributionViaWorkchain:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mDisableFrozenProcessWakelocks:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public improveWakelockLatency()Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mImproveWakelockLatency:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-static {v0}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/power/feature/PowerManagerFlags$FlagState;)Z

    move-result v0

    return v0
.end method

.method public isDisableFrozenProcessWakelocksEnabled()Z
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mDisableFrozenProcessWakelocks:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-static {v0}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/power/feature/PowerManagerFlags$FlagState;)Z

    move-result v0

    return v0
.end method

.method public isEarlyScreenTimeoutDetectorEnabled()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mEarlyScreenTimeoutDetectorFlagState:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-static {v0}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/power/feature/PowerManagerFlags$FlagState;)Z

    move-result v0

    return v0
.end method

.method public isFrameworkWakelockInfoEnabled()Z
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mFrameworkWakelockInfo:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-static {v0}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/power/feature/PowerManagerFlags$FlagState;)Z

    move-result v0

    return v0
.end method

.method public isMoveWscLoggingToNotifierEnabled()Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mMoveWscLoggingToNotifier:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-static {v0}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/power/feature/PowerManagerFlags$FlagState;)Z

    move-result v0

    return v0
.end method

.method public isPerDisplayWakeByTouchEnabled()Z
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mPerDisplayWakeByTouch:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-static {v0}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/power/feature/PowerManagerFlags$FlagState;)Z

    move-result v0

    return v0
.end method

.method public isPolicyReasonInDisplayPowerRequestEnabled()Z
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mPolicyReasonInDisplayPowerRequest:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-static {v0}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/power/feature/PowerManagerFlags$FlagState;)Z

    move-result v0

    return v0
.end method

.method public isScreenTimeoutPolicyListenerApiEnabled()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mEnableScreenTimeoutPolicyListenerApi:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-static {v0}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/power/feature/PowerManagerFlags$FlagState;)Z

    move-result v0

    return v0
.end method

.method public isWakelockAttributionViaWorkchainEnabled()Z
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mWakelockAttributionViaWorkchain:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-static {v0}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/power/feature/PowerManagerFlags$FlagState;)Z

    move-result v0

    return v0
.end method
