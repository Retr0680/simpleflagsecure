.class public final synthetic Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayPolicy;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayPolicy;ZIZZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/wm/DisplayPolicy;

    iput-boolean p2, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda14;->f$1:Z

    iput p3, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda14;->f$2:I

    iput-boolean p4, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda14;->f$3:Z

    iput-boolean p5, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda14;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda14;->f$1:Z

    iget v2, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda14;->f$2:I

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda14;->f$3:Z

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda14;->f$4:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/wm/DisplayPolicy;->$r8$lambda$qs4Rqs-Mm2GUBkf9Pjp3ZXa02kk(Lcom/android/server/wm/DisplayPolicy;ZIZZ)V

    return-void
.end method
