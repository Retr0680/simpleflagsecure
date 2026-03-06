.class final Lcom/android/server/TradeInModeService$TradeInMode;
.super Landroid/os/ITradeInMode$Stub;
.source "TradeInModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TradeInModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TradeInMode"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TradeInModeService;


# direct methods
.method private constructor <init>(Lcom/android/server/TradeInModeService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-direct {p0}, Landroid/os/ITradeInMode$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/TradeInModeService;Lcom/android/server/TradeInModeService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/TradeInModeService$TradeInMode;-><init>(Lcom/android/server/TradeInModeService;)V

    return-void
.end method

.method private enforceTestingPermissions()V
    .locals 3

    .line 247
    iget-object v0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v0}, Lcom/android/server/TradeInModeService;->-$$Nest$fgetmContext(Lcom/android/server/TradeInModeService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ENTER_TRADE_IN_MODE"

    const-string v2, "Caller must have ENTER_TRADE_IN_MODE permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v0}, Lcom/android/server/TradeInModeService;->-$$Nest$misDebuggable(Lcom/android/server/TradeInModeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    return-void

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "ro.debuggable must be set to 1"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public enterEvaluationMode()Z
    .locals 6

    .line 169
    iget-object v0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v0}, Lcom/android/server/TradeInModeService;->-$$Nest$fgetmContext(Lcom/android/server/TradeInModeService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ENTER_TRADE_IN_MODE"

    const-string v2, "Cannot enter trade-in evaluation mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v0}, Lcom/android/server/TradeInModeService;->-$$Nest$mgetTradeInModeState(Lcom/android/server/TradeInModeService;)I

    move-result v0

    .line 172
    .local v0, "state":I
    const-string v1, "TradeInModeService"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot enter evaluation mode in state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return v2

    .line 176
    :cond_0
    iget-object v4, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v4}, Lcom/android/server/TradeInModeService;->-$$Nest$misFrpActive(Lcom/android/server/TradeInModeService;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 177
    const-string v3, "Cannot enter evaluation mode, FRP lock is present."

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return v2

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v1}, Lcom/android/server/TradeInModeService;->-$$Nest$mscheduleTradeInModeWipe(Lcom/android/server/TradeInModeService;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 181
    return v2

    .line 184
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 186
    .local v1, "callingId":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v4}, Lcom/android/server/TradeInModeService;->-$$Nest$mremoveNetworkWatch(Lcom/android/server/TradeInModeService;)V

    .line 187
    iget-object v4, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v4}, Lcom/android/server/TradeInModeService;->-$$Nest$mremoveAccountsWatch(Lcom/android/server/TradeInModeService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 190
    nop

    .line 192
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "persist.adb.tradeinmode"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v4, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v4}, Lcom/android/server/TradeInModeService;->-$$Nest$mrestartAdbd(Lcom/android/server/TradeInModeService;)V

    .line 194
    return v3

    .line 189
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 190
    throw v3
.end method

.method public isEvaluationModeAllowed()Z
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v0}, Lcom/android/server/TradeInModeService;->-$$Nest$fgetmContext(Lcom/android/server/TradeInModeService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ENTER_TRADE_IN_MODE"

    const-string v2, "Cannot test for trade-in evaluation mode allowed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v0}, Lcom/android/server/TradeInModeService;->-$$Nest$misFrpActive(Lcom/android/server/TradeInModeService;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isTesting()Z
    .locals 1

    .line 241
    invoke-direct {p0}, Lcom/android/server/TradeInModeService$TradeInMode;->enforceTestingPermissions()V

    .line 243
    iget-object v0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v0}, Lcom/android/server/TradeInModeService;->-$$Nest$misForceEnabledForTesting(Lcom/android/server/TradeInModeService;)Z

    move-result v0

    return v0
.end method

.method public scheduleWipeForTesting()V
    .locals 1

    .line 208
    invoke-direct {p0}, Lcom/android/server/TradeInModeService$TradeInMode;->enforceTestingPermissions()V

    .line 210
    iget-object v0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v0}, Lcom/android/server/TradeInModeService;->-$$Nest$mscheduleTradeInModeWipe(Lcom/android/server/TradeInModeService;)Z

    .line 211
    return-void
.end method

.method public start()Z
    .locals 5

    .line 130
    iget-object v0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v0}, Lcom/android/server/TradeInModeService;->-$$Nest$fgetmContext(Lcom/android/server/TradeInModeService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ENTER_TRADE_IN_MODE"

    const-string v2, "Cannot enter trade-in mode foyer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v0}, Lcom/android/server/TradeInModeService;->-$$Nest$mgetTradeInModeState(Lcom/android/server/TradeInModeService;)I

    move-result v0

    .line 133
    .local v0, "state":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 134
    return v1

    .line 137
    :cond_0
    const/4 v2, 0x0

    const-string v3, "TradeInModeService"

    if-eqz v0, :cond_1

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot enter trade-in mode in state: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return v2

    .line 142
    :cond_1
    iget-object v4, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v4}, Lcom/android/server/TradeInModeService;->-$$Nest$misDeviceSetup(Lcom/android/server/TradeInModeService;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 143
    const-string v1, "Not starting trade-in mode, device is setup."

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return v2

    .line 146
    :cond_2
    iget-object v4, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v4}, Lcom/android/server/TradeInModeService;->-$$Nest$misDebuggable(Lcom/android/server/TradeInModeService;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 147
    iget-object v4, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v4}, Lcom/android/server/TradeInModeService;->-$$Nest$misForceEnabledForTesting(Lcom/android/server/TradeInModeService;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 149
    const-string v1, "Not starting trade-in mode, device is debuggable."

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return v2

    .line 152
    :cond_3
    iget-object v4, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v4}, Lcom/android/server/TradeInModeService;->-$$Nest$misAdbEnabled(Lcom/android/server/TradeInModeService;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 153
    const-string v1, "Not starting trade-in mode, adb is already enabled."

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return v2

    .line 157
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 159
    .local v2, "callingId":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v4}, Lcom/android/server/TradeInModeService;->-$$Nest$mstartTradeInMode(Lcom/android/server/TradeInModeService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 162
    nop

    .line 163
    return v1

    .line 161
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 162
    throw v1
.end method

.method public startTesting()V
    .locals 1

    .line 216
    invoke-direct {p0}, Lcom/android/server/TradeInModeService$TradeInMode;->enforceTestingPermissions()V

    .line 218
    iget-object v0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v0}, Lcom/android/server/TradeInModeService;->-$$Nest$menterTestMode(Lcom/android/server/TradeInModeService;)V

    .line 219
    return-void
.end method

.method public stopTesting()V
    .locals 3

    .line 224
    invoke-direct {p0}, Lcom/android/server/TradeInModeService$TradeInMode;->enforceTestingPermissions()V

    .line 226
    iget-object v0, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v0}, Lcom/android/server/TradeInModeService;->-$$Nest$misForceEnabledForTesting(Lcom/android/server/TradeInModeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 232
    .local v0, "callingId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/TradeInModeService$TradeInMode;->this$0:Lcom/android/server/TradeInModeService;

    invoke-static {v2}, Lcom/android/server/TradeInModeService;->-$$Nest$mleaveTestMode(Lcom/android/server/TradeInModeService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 235
    nop

    .line 236
    return-void

    .line 234
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 235
    throw v2

    .line 227
    .end local v0    # "callingId":J
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "testing must have been started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
