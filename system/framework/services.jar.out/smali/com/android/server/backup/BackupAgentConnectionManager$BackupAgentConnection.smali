.class final Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;
.super Ljava/lang/Object;
.source "BackupAgentConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupAgentConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BackupAgentConnection"
.end annotation


# instance fields
.field public final appInfo:Landroid/content/pm/ApplicationInfo;

.field public backupAgent:Landroid/app/IBackupAgent;

.field public final backupMode:I

.field public connecting:Z

.field public final inRestrictedMode:Z


# direct methods
.method private constructor <init>(Landroid/content/pm/ApplicationInfo;IZ)V
    .locals 1
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "backupMode"    # I
    .param p3, "inRestrictedMode"    # Z

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;->connecting:Z

    .line 114
    iput-object p1, p0, Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 115
    iput p2, p0, Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;->backupMode:I

    .line 116
    iput-boolean p3, p0, Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;->inRestrictedMode:Z

    .line 117
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/pm/ApplicationInfo;IZLcom/android/server/backup/BackupAgentConnectionManager-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;-><init>(Landroid/content/pm/ApplicationInfo;IZ)V

    return-void
.end method
