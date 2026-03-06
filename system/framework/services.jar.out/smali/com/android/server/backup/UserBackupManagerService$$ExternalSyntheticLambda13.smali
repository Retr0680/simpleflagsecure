.class public final synthetic Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/backup/internal/OnTaskFinishedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/backup/UserBackupManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/UserBackupManagerService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/backup/UserBackupManagerService;

    return-void
.end method


# virtual methods
.method public final onFinished(Ljava/lang/String;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0, p1}, Lcom/android/server/backup/UserBackupManagerService;->$r8$lambda$vj0KzEzwo54sYXvz53rLbY7FwqE(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;)V

    return-void
.end method
