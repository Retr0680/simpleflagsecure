.class Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;
.super Lcom/android/server/input/UEventManager$UEventListener;
.source "SysfsNodeMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/SysfsNodeMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SysfsNodeAddedListener"
.end annotation


# instance fields
.field private mHasReceivedPowerSupplyNotification:Z

.field private mHasReceivedRemovalNotification:Z

.field final synthetic this$0:Lcom/android/server/input/SysfsNodeMonitor;


# direct methods
.method public static synthetic $r8$lambda$A8GB7pJL44mEC8RsWsS_eXkLo9c(Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;Landroid/os/UEventObserver$UEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;->lambda$onUEvent$0(Landroid/os/UEventObserver$UEvent;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/input/SysfsNodeMonitor;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/input/SysfsNodeMonitor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;->this$0:Lcom/android/server/input/SysfsNodeMonitor;

    invoke-direct {p0}, Lcom/android/server/input/UEventManager$UEventListener;-><init>()V

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;->mHasReceivedRemovalNotification:Z

    .line 149
    iput-boolean v0, p0, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;->mHasReceivedPowerSupplyNotification:Z

    return-void
.end method

.method private handleUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .line 159
    invoke-static {}, Lcom/android/server/input/SysfsNodeMonitor;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-static {}, Lcom/android/server/input/SysfsNodeMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UEventListener: Received UEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    const-string v0, "SUBSYSTEM"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "subsystem":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sys"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v2, "DEVPATH"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "devPath":Ljava/lang/String;
    const-string v2, "ACTION"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "action":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;->mHasReceivedRemovalNotification:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    const-string v3, "REMOVE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    goto/16 :goto_0

    .line 176
    :cond_2
    const-string v3, "LEDS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "ADD"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 178
    invoke-static {}, Lcom/android/server/input/SysfsNodeMonitor;->-$$Nest$sfgetDEBUG()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 179
    invoke-static {}, Lcom/android/server/input/SysfsNodeMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reconfiguring sysfs node because \'leds\' node was added: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_3
    iget-object v3, p0, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;->this$0:Lcom/android/server/input/SysfsNodeMonitor;

    invoke-static {v3}, Lcom/android/server/input/SysfsNodeMonitor;->-$$Nest$fgetmNative(Lcom/android/server/input/SysfsNodeMonitor;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/server/input/NativeInputManagerService;->sysfsNodeChanged(Ljava/lang/String;)V

    .line 183
    return-void

    .line 186
    :cond_4
    const-string v3, "POWER_SUPPLY"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 187
    iget-boolean v3, p0, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;->mHasReceivedPowerSupplyNotification:Z

    if-eqz v3, :cond_5

    .line 188
    return-void

    .line 194
    :cond_5
    invoke-static {}, Lcom/android/server/input/SysfsNodeMonitor;->-$$Nest$sfgetDEBUG()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 195
    invoke-static {}, Lcom/android/server/input/SysfsNodeMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reconfiguring sysfs node because \'power_supply\' node had action \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_6
    iput-boolean v4, p0, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;->mHasReceivedPowerSupplyNotification:Z

    .line 199
    iget-object v3, p0, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;->this$0:Lcom/android/server/input/SysfsNodeMonitor;

    invoke-static {v3}, Lcom/android/server/input/SysfsNodeMonitor;->-$$Nest$fgetmNative(Lcom/android/server/input/SysfsNodeMonitor;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/server/input/NativeInputManagerService;->sysfsNodeChanged(Ljava/lang/String;)V

    .line 201
    :cond_7
    return-void

    .line 172
    :goto_0
    iput-boolean v4, p0, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;->mHasReceivedRemovalNotification:Z

    .line 173
    return-void
.end method

.method private synthetic lambda$onUEvent$0(Landroid/os/UEventObserver$UEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;->handleUEvent(Landroid/os/UEventObserver$UEvent;)V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .line 155
    iget-object v0, p0, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;->this$0:Lcom/android/server/input/SysfsNodeMonitor;

    invoke-static {v0}, Lcom/android/server/input/SysfsNodeMonitor;->-$$Nest$fgetmHandler(Lcom/android/server/input/SysfsNodeMonitor;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;Landroid/os/UEventObserver$UEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 156
    return-void
.end method
