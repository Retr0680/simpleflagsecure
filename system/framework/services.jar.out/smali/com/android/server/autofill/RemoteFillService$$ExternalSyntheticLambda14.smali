.class public final synthetic Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Landroid/service/autofill/FillEventHistory;


# direct methods
.method public synthetic constructor <init>(Landroid/service/autofill/FillEventHistory;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda14;->f$0:Landroid/service/autofill/FillEventHistory;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda14;->f$0:Landroid/service/autofill/FillEventHistory;

    check-cast p1, Landroid/service/autofill/IAutoFillService;

    invoke-static {v0, p1}, Lcom/android/server/autofill/RemoteFillService;->$r8$lambda$0XlyAiQT5OzqKESto0rFkNEAk2U(Landroid/service/autofill/FillEventHistory;Landroid/service/autofill/IAutoFillService;)V

    return-void
.end method
