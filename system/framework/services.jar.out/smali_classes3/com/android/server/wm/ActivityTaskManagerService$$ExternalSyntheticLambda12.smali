.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final synthetic f$1:Landroid/content/res/Configuration;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/content/res/Configuration;

.field public final synthetic f$4:I

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/res/Configuration;ILandroid/content/res/Configuration;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda12;->f$1:Landroid/content/res/Configuration;

    iput p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda12;->f$2:I

    iput-object p4, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda12;->f$3:Landroid/content/res/Configuration;

    iput p5, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda12;->f$4:I

    iput-boolean p6, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda12;->f$5:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda12;->f$1:Landroid/content/res/Configuration;

    iget v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda12;->f$2:I

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda12;->f$3:Landroid/content/res/Configuration;

    iget v4, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda12;->f$4:I

    iget-boolean v5, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda12;->f$5:Z

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskManagerService;->$r8$lambda$Ha4HjxxA3DEFFM_Fwh_Wj4FVE5I(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/res/Configuration;ILandroid/content/res/Configuration;IZ)V

    return-void
.end method
