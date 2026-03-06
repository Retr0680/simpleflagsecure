.class Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;
.super Ljava/lang/Object;
.source "OomAdjusterModernImpl.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OomAdjusterModernImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComputeConnectionsConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OomAdjusterModernImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/am/OomAdjusterModernImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 746
    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;->this$0:Lcom/android/server/am/OomAdjusterModernImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/OomAdjusterModernImpl;Lcom/android/server/am/OomAdjusterModernImpl-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;-><init>(Lcom/android/server/am/OomAdjusterModernImpl;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;)V
    .locals 4
    .param p1, "args"    # Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    .line 749
    iget-object v0, p1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 750
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v1, p1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mUids:Lcom/android/server/am/ActiveUids;

    .line 753
    .local v1, "uids":Lcom/android/server/am/ActiveUids;
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-object v3, p0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;->this$0:Lcom/android/server/am/OomAdjusterModernImpl;

    iget v3, v3, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    .line 754
    if-eqz v1, :cond_0

    .line 755
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v2

    .line 757
    .local v2, "uidRec":Lcom/android/server/am/UidRecord;
    if-eqz v2, :cond_0

    .line 758
    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 761
    .end local v2    # "uidRec":Lcom/android/server/am/UidRecord;
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;->this$0:Lcom/android/server/am/OomAdjusterModernImpl;

    invoke-static {v2}, Lcom/android/server/am/OomAdjusterModernImpl;->-$$Nest$fgetmComputeHostConsumer(Lcom/android/server/am/OomAdjusterModernImpl;)Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;

    move-result-object v2

    iput-object p1, v2, Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;->args:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    .line 762
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;->this$0:Lcom/android/server/am/OomAdjusterModernImpl;

    invoke-static {v2}, Lcom/android/server/am/OomAdjusterModernImpl;->-$$Nest$fgetmComputeHostConsumer(Lcom/android/server/am/OomAdjusterModernImpl;)Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/am/OomAdjusterModernImpl;->-$$Nest$smforEachConnectionLSP(Lcom/android/server/am/ProcessRecord;Ljava/util/function/BiConsumer;)V

    .line 763
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 746
    check-cast p1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;->accept(Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;)V

    return-void
.end method
