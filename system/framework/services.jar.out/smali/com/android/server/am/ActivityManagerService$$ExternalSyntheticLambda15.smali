.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;ZILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/am/ActivityManagerService;

    iput-boolean p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda15;->f$1:Z

    iput p3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda15;->f$2:I

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda15;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda15;->f$1:Z

    iget v2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda15;->f$2:I

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda15;->f$3:Ljava/lang/String;

    check-cast p1, Landroid/content/Intent;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/am/ActivityManagerService;->$r8$lambda$SxdKEqTi4JVrd-FfIWHZtDJqWtM(Lcom/android/server/am/ActivityManagerService;ZILjava/lang/String;Landroid/content/Intent;)V

    return-void
.end method
