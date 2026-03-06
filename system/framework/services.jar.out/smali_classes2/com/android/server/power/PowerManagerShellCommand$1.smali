.class Lcom/android/server/power/PowerManagerShellCommand$1;
.super Landroid/app/IAlarmListener$Stub;
.source "PowerManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerShellCommand;-><init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService$BinderService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerShellCommand;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerShellCommand;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerShellCommand;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/android/server/power/PowerManagerShellCommand$1;->this$0:Lcom/android/server/power/PowerManagerShellCommand;

    invoke-direct {p0}, Landroid/app/IAlarmListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public doAlarm(Landroid/app/IAlarmCompleteListener;)V
    .locals 7
    .param p1, "callback"    # Landroid/app/IAlarmCompleteListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/android/server/power/PowerManagerShellCommand$1;->this$0:Lcom/android/server/power/PowerManagerShellCommand;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerShellCommand;->-$$Nest$fgetmService(Lcom/android/server/power/PowerManagerShellCommand;)Lcom/android/server/power/PowerManagerService$BinderService;

    move-result-object v1

    .line 62
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerShellCommand$1;->this$0:Lcom/android/server/power/PowerManagerShellCommand;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerShellCommand;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerShellCommand;)Landroid/content/Context;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    .line 61
    const/4 v4, 0x2

    const-string v5, "PowerManagerShellCommand"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService$BinderService;->wakeUp(JILjava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method
