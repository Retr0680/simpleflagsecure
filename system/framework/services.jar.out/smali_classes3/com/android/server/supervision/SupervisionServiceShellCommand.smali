.class public Lcom/android/server/supervision/SupervisionServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "SupervisionServiceShellCommand.java"


# instance fields
.field private final mService:Lcom/android/server/supervision/SupervisionService;


# direct methods
.method public constructor <init>(Lcom/android/server/supervision/SupervisionService;)V
    .locals 0
    .param p1, "mService"    # Lcom/android/server/supervision/SupervisionService;

    .line 25
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/server/supervision/SupervisionServiceShellCommand;->mService:Lcom/android/server/supervision/SupervisionService;

    .line 27
    return-void
.end method

.method private setEnabled(Z)I
    .locals 2
    .param p1, "enabled"    # Z

    .line 45
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 46
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/supervision/SupervisionServiceShellCommand;->mService:Lcom/android/server/supervision/SupervisionService;

    iget-object v1, v1, Lcom/android/server/supervision/SupervisionService;->mInternal:Landroid/app/supervision/SupervisionManagerInternal;

    invoke-virtual {v1, v0, p1}, Landroid/app/supervision/SupervisionManagerInternal;->setSupervisionEnabledForUser(IZ)V

    .line 47
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .line 31
    if-nez p1, :cond_0

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 34
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v0, "disable"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string v0, "enable"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 40
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 38
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/android/server/supervision/SupervisionServiceShellCommand;->setEnabled(Z)I

    move-result v0

    return v0

    .line 36
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/server/supervision/SupervisionServiceShellCommand;->setEnabled(Z)I

    move-result v0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4d6ada7d -> :sswitch_1
        0x639e22e8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHelp()V
    .locals 2

    .line 52
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 53
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Supervision service (supervision) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 54
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    const-string v1, "      Prints this help text"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 56
    const-string v1, "  enable <USER_ID>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 57
    const-string v1, "      Enables supervision for the given user."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    const-string v1, "  disable <USER_ID>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    const-string v1, "      Disables supervision for the given user."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    return-void
.end method
