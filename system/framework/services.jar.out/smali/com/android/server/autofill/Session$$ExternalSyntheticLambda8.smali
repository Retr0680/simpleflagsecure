.class public final synthetic Lcom/android/server/autofill/Session$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/Session;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/service/autofill/FillResponse;

.field public final synthetic f$3:Landroid/view/autofill/AutofillId;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/Session;Ljava/lang/String;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/autofill/Session;

    iput-object p2, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda8;->f$2:Landroid/service/autofill/FillResponse;

    iput-object p4, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda8;->f$3:Landroid/view/autofill/AutofillId;

    iput p5, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda8;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/autofill/Session;

    iget-object v1, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda8;->f$2:Landroid/service/autofill/FillResponse;

    iget-object v3, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda8;->f$3:Landroid/view/autofill/AutofillId;

    iget v4, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda8;->f$4:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/autofill/Session;->$r8$lambda$Sn2jczMPhGLnGGz2COobcUk52MQ(Lcom/android/server/autofill/Session;Ljava/lang/String;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;I)V

    return-void
.end method
