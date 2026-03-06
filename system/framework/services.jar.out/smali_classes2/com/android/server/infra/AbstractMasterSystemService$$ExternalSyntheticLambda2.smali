.class public final synthetic Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/infra/AbstractMasterSystemService$Visitor;


# instance fields
.field public final synthetic f$0:Lcom/android/server/infra/AbstractMasterSystemService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:[Ljava/lang/String;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iput-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda2;->f$2:[Ljava/lang/String;

    iput p4, p0, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda2;->f$3:I

    return-void
.end method


# virtual methods
.method public final visit(Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda2;->f$2:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda2;->f$3:I

    check-cast p1, Lcom/android/server/infra/AbstractPerUserSystemService;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->$r8$lambda$Ga9vBVmhOO5H17gkpG1uzphhz8U(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/String;[Ljava/lang/String;ILcom/android/server/infra/AbstractPerUserSystemService;)V

    return-void
.end method
