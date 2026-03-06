.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;JJZZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/am/ActivityManagerService;

    iput-wide p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda9;->f$1:J

    iput-wide p4, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda9;->f$2:J

    iput-boolean p6, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda9;->f$3:Z

    iput-boolean p7, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda9;->f$4:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    .line 0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/am/ActivityManagerService;

    iget-wide v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda9;->f$1:J

    iget-wide v3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda9;->f$2:J

    iget-boolean v5, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda9;->f$3:Z

    iget-boolean v6, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda9;->f$4:Z

    move-object v7, p1

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    invoke-static/range {v0 .. v7}, Lcom/android/server/am/ActivityManagerService;->$r8$lambda$8xltK1joc2XJU_fax4gtMmG4l-8(Lcom/android/server/am/ActivityManagerService;JJZZLcom/android/server/am/ProcessRecord;)V

    return-void
.end method
