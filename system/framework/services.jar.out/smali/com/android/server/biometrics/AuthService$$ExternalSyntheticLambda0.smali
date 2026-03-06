.class public final synthetic Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:[Ljava/lang/String;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:[Ljava/lang/String;

.field public final synthetic f$4:Landroid/hardware/face/IFaceService;


# direct methods
.method public synthetic constructor <init>(Z[Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;Landroid/hardware/face/IFaceService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda0;->f$0:Z

    iput-object p2, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda0;->f$3:[Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda0;->f$4:Landroid/hardware/face/IFaceService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-boolean v0, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda0;->f$0:Z

    iget-object v1, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda0;->f$3:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda0;->f$4:Landroid/hardware/face/IFaceService;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/biometrics/AuthService;->$r8$lambda$QH_Ki2CXRp4czGmln7B_Z5KU08U(Z[Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;Landroid/hardware/face/IFaceService;)V

    return-void
.end method
