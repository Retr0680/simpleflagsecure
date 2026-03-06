.class public interface abstract Lcom/android/server/backup/BackupRestoreTask;
.super Ljava/lang/Object;
.source "BackupRestoreTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupRestoreTask$CancellationReason;
    }
.end annotation


# virtual methods
.method public abstract execute()V
.end method

.method public abstract handleCancel(I)V
.end method

.method public abstract operationComplete(J)V
.end method
