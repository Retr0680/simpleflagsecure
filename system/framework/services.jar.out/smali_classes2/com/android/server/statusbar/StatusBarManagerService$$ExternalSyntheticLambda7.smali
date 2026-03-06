.class public final synthetic Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/statusbar/StatusBarManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;IIIZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda7;->f$1:I

    iput p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda7;->f$2:I

    iput p4, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda7;->f$3:I

    iput-boolean p5, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda7;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda7;->f$1:I

    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda7;->f$2:I

    iget v3, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda7;->f$3:I

    iget-boolean v4, p0, Lcom/android/server/statusbar/StatusBarManagerService$$ExternalSyntheticLambda7;->f$4:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/statusbar/StatusBarManagerService;->$r8$lambda$sOIsh_to_xA_LnMxKA0y_h-zOXs(Lcom/android/server/statusbar/StatusBarManagerService;IIIZ)V

    return-void
.end method
