.class public interface abstract annotation Lcom/android/server/backup/BackupRestoreTask$CancellationReason;
.super Ljava/lang/Object;
.source "BackupRestoreTask.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupRestoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "CancellationReason"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final AGENT_DISCONNECTED:I = 0x1

.field public static final EXTERNAL:I = 0x2

.field public static final SCHEDULED_JOB_STOPPED:I = 0x3

.field public static final TIMEOUT:I
