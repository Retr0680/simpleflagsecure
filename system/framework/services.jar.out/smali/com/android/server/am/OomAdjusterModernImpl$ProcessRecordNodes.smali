.class Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;
.super Ljava/lang/Object;
.source "OomAdjusterModernImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OomAdjusterModernImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessRecordNodes"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;
    }
.end annotation


# instance fields
.field private mFirstPopulatedSlot:I

.field private final mLastNode:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

.field private final mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

.field private final mSlotFunction:Ljava/util/function/ToIntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToIntFunction<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:I

.field final synthetic this$0:Lcom/android/server/am/OomAdjusterModernImpl;


# direct methods
.method public static synthetic $r8$lambda$1fW7yf2z7Pgv749DQUgfBRaf7aQ(Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->lambda$new$3(Lcom/android/server/am/ProcessRecord;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TZt9shA5uGR6y6KMomqwUImYth0(Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->lambda$new$5(Lcom/android/server/am/ProcessRecord;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$bQ88-2swpGH2IsZbscjy6IA3z44(Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->lambda$new$4(Lcom/android/server/am/ProcessRecord;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$dVky852B00emlsqiXMSJCZhOi8g(Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->lambda$new$1(Lcom/android/server/am/ProcessRecord;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$f3jBBX76pazR-KkVwKD4h19bcRw(Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->lambda$new$0(Lcom/android/server/am/ProcessRecord;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$xRsLLgodHEUbn_iuIPZpAnHO0RE(Lcom/android/server/am/ProcessRecord;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->lambda$new$2(Lcom/android/server/am/ProcessRecord;)I

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/android/server/am/OomAdjusterModernImpl;II)V
    .locals 3
    .param p2, "type"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 279
    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->this$0:Lcom/android/server/am/OomAdjusterModernImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mFirstPopulatedSlot:I

    .line 280
    iput p2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mType:I

    .line 282
    iget p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mType:I

    packed-switch p1, :pswitch_data_0

    .line 292
    new-instance p1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda4;-><init>()V

    .line 293
    .local p1, "valueFunction":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<Lcom/android/server/am/ProcessRecord;>;"
    new-instance v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda5;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mSlotFunction:Ljava/util/function/ToIntFunction;

    goto :goto_0

    .line 288
    .end local p1    # "valueFunction":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<Lcom/android/server/am/ProcessRecord;>;"
    :pswitch_0
    new-instance p1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda2;-><init>()V

    .line 289
    .restart local p1    # "valueFunction":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<Lcom/android/server/am/ProcessRecord;>;"
    new-instance v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda3;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mSlotFunction:Ljava/util/function/ToIntFunction;

    .line 290
    goto :goto_0

    .line 284
    .end local p1    # "valueFunction":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<Lcom/android/server/am/ProcessRecord;>;"
    :pswitch_1
    new-instance p1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda0;-><init>()V

    .line 285
    .restart local p1    # "valueFunction":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<Lcom/android/server/am/ProcessRecord;>;"
    new-instance v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mSlotFunction:Ljava/util/function/ToIntFunction;

    .line 286
    nop

    .line 297
    :goto_0
    new-array v0, p3, [Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    iput-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    .line 298
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_0

    .line 299
    iget-object v1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    new-instance v2, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    invoke-direct {v2, p1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;-><init>(Ljava/util/function/ToIntFunction;)V

    aput-object v2, v1, v0

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    nop

    .line 301
    .end local v0    # "i":I
    new-array v0, p3, [Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iput-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mLastNode:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 302
    invoke-virtual {p0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->resetLastNodes()V

    .line 303
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCurrentSlot(Lcom/android/server/am/ProcessRecord;)I
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 490
    iget v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 496
    const/4 v0, -0x1

    return v0

    .line 494
    :pswitch_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/OomAdjusterModernImpl;->adjToSlot(I)I

    move-result v0

    return v0

    .line 492
    :pswitch_1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/OomAdjusterModernImpl;->processStateToSlot(I)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic lambda$new$0(Lcom/android/server/am/ProcessRecord;)I
    .locals 1
    .param p0, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 284
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    return v0
.end method

.method private static synthetic lambda$new$1(Lcom/android/server/am/ProcessRecord;)I
    .locals 1
    .param p0, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 285
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/OomAdjusterModernImpl;->processStateToSlot(I)I

    move-result v0

    return v0
.end method

.method private static synthetic lambda$new$2(Lcom/android/server/am/ProcessRecord;)I
    .locals 1
    .param p0, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 288
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v0

    return v0
.end method

.method private static synthetic lambda$new$3(Lcom/android/server/am/ProcessRecord;)I
    .locals 1
    .param p0, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 289
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/OomAdjusterModernImpl;->adjToSlot(I)I

    move-result v0

    return v0
.end method

.method private static synthetic lambda$new$4(Lcom/android/server/am/ProcessRecord;)I
    .locals 1
    .param p0, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$new$5(Lcom/android/server/am/ProcessRecord;)I
    .locals 1
    .param p0, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 293
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method append(Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;I)V
    .locals 1
    .param p1, "node"    # Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;
    .param p2, "targetSlot"    # I

    .line 485
    invoke-virtual {p1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->unlink()V

    .line 486
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->append(Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;)V

    .line 487
    return-void
.end method

.method append(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 477
    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->getCurrentSlot(Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->append(Lcom/android/server/am/ProcessRecord;I)V

    .line 478
    return-void
.end method

.method append(Lcom/android/server/am/ProcessRecord;I)V
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "targetSlot"    # I

    .line 481
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mLinkedNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iget v1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mType:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p2}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->append(Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;I)V

    .line 482
    return-void
.end method

.method forEachNewNode(ILjava/util/function/Consumer;)V
    .locals 6
    .param p1, "slot"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;",
            ">;)V"
        }
    .end annotation

    .line 333
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;>;"
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mLastNode:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 334
    .local v0, "node":Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;
    iget-object v1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->TAIL:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 335
    .local v1, "tail":Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;
    :goto_0
    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_4

    .line 336
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->this$0:Lcom/android/server/am/OomAdjusterModernImpl;

    invoke-static {v2}, Lcom/android/server/am/OomAdjusterModernImpl;->-$$Nest$fgetmTmpOomAdjusterArgs(Lcom/android/server/am/OomAdjusterModernImpl;)Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mApp:Lcom/android/server/am/ProcessRecord;

    iput-object v3, v2, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 337
    iget-object v2, v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mApp:Lcom/android/server/am/ProcessRecord;

    if-nez v2, :cond_1

    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "Iterating null process during OomAdjuster traversal!!!\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    const-string v3, "Type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    iget v3, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mType:I

    packed-switch v3, :pswitch_data_0

    .line 346
    const-string v3, "UNKNOWN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 345
    :pswitch_0
    const-string v3, "NODE_TYPE_ADJ"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 343
    :pswitch_1
    const-string v3, "NODE_TYPE_PROC_STATE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    :goto_1
    const-string v3, ", Slot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 350
    const-string v3, "\nLAST:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    iget-object v3, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mLastNode:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    aget-object v3, v3, p1

    .line 352
    .local v3, "last":Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;
    iget-object v4, v3, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mApp:Lcom/android/server/am/ProcessRecord;

    if-nez v4, :cond_0

    .line 353
    const-string/jumbo v4, "null"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 355
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 356
    const-string v4, "\nSetProcState:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    iget-object v4, v3, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getSetProcState()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 358
    const-string v4, ", CurProcState:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    iget-object v4, v3, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 360
    const-string v4, ", SetAdj:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    iget-object v4, v3, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getSetAdj()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 362
    const-string v4, ", CurRawAdj:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    iget-object v4, v3, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 365
    :goto_2
    const-string v4, "OomAdjusterModernImpl"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "last":Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;
    :cond_1
    iget-object v2, v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    .line 369
    .local v2, "next":Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;
    iget-object v3, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->this$0:Lcom/android/server/am/OomAdjusterModernImpl;

    invoke-static {v3}, Lcom/android/server/am/OomAdjusterModernImpl;->-$$Nest$fgetmTmpOomAdjusterArgs(Lcom/android/server/am/OomAdjusterModernImpl;)Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_2

    .line 370
    iget-object v3, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->this$0:Lcom/android/server/am/OomAdjusterModernImpl;

    invoke-static {v3}, Lcom/android/server/am/OomAdjusterModernImpl;->-$$Nest$fgetmTmpOomAdjusterArgs(Lcom/android/server/am/OomAdjusterModernImpl;)Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 381
    :cond_2
    if-ne v2, v1, :cond_3

    iget-object v3, v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iget-object v3, v3, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    if-eqz v3, :cond_3

    .line 382
    iget-object v3, v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    goto :goto_3

    :cond_3
    move-object v3, v2

    :goto_3
    move-object v0, v3

    .line 383
    .end local v2    # "next":Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;
    goto/16 :goto_0

    .line 384
    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getNumberOfSlots()I
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    array-length v0, v0

    return v0
.end method

.method moveAllNodesTo(II)V
    .locals 4
    .param p1, "fromSlot"    # I
    .param p2, "toSlot"    # I

    .line 429
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    aget-object v0, v0, p1

    .line 430
    .local v0, "fromList":Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;
    iget-object v1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    aget-object v1, v1, p2

    .line 431
    .local v1, "toList":Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;
    if-eq p1, p2, :cond_0

    iget-object v2, v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->HEAD:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iget-object v2, v2, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iget-object v3, v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->TAIL:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    if-eq v2, v3, :cond_0

    .line 432
    invoke-virtual {v0, v1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->moveTo(Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;)V

    .line 433
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mLastNode:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->getLastNodeBeforeTail()Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    move-result-object v3

    aput-object v3, v2, p1

    .line 435
    :cond_0
    return-void
.end method

.method moveAppTo(Lcom/android/server/am/ProcessRecord;II)V
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "prevSlot"    # I
    .param p3, "newSlot"    # I

    .line 418
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mLinkedNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iget v1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mType:I

    aget-object v0, v0, v1

    .line 419
    .local v0, "node":Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 420
    iget-object v1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mLastNode:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    aget-object v1, v1, p2

    if-ne v1, v0, :cond_0

    .line 421
    iget-object v1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mLastNode:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iget-object v2, v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    aput-object v2, v1, p2

    .line 425
    :cond_0
    invoke-virtual {p0, v0, p3}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->append(Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;I)V

    .line 426
    return-void
.end method

.method moveAppToTail(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 438
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mLinkedNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iget v1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mType:I

    aget-object v0, v0, v1

    .line 440
    .local v0, "node":Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;
    iget v1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 456
    return-void

    .line 449
    :pswitch_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/OomAdjusterModernImpl;->adjToSlot(I)I

    move-result v1

    .line 450
    .local v1, "slot":I
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mLastNode:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    aget-object v2, v2, v1

    if-ne v2, v0, :cond_0

    .line 451
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mLastNode:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iget-object v3, v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    aput-object v3, v2, v1

    .line 453
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->moveNodeToTail(Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;)V

    .line 454
    goto :goto_0

    .line 442
    .end local v1    # "slot":I
    :pswitch_1
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/OomAdjusterModernImpl;->processStateToSlot(I)I

    move-result v1

    .line 443
    .restart local v1    # "slot":I
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mLastNode:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    aget-object v2, v2, v1

    if-ne v2, v0, :cond_1

    .line 444
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mLastNode:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iget-object v3, v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    aput-object v3, v2, v1

    .line 446
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->moveNodeToTail(Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;)V

    .line 447
    nop

    .line 459
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method offer(Lcom/android/server/am/ProcessRecord;)V
    .locals 3
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 402
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mLinkedNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iget v1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mType:I

    aget-object v0, v0, v1

    .line 404
    .local v0, "node":Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;
    iget-object v1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mSlotFunction:Ljava/util/function/ToIntFunction;

    invoke-interface {v1, p1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v1

    .line 405
    .local v1, "newSlot":I
    iget v2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mFirstPopulatedSlot:I

    if-ge v1, v2, :cond_0

    .line 407
    iput v1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mFirstPopulatedSlot:I

    .line 409
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->unlink()V

    .line 410
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->offer(Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;)V

    .line 411
    return-void
.end method

.method poll()Lcom/android/server/am/ProcessRecord;
    .locals 4

    .line 387
    const/4 v0, 0x0

    .line 388
    .local v0, "node":Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;
    iget-object v1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    array-length v1, v1

    .line 390
    .local v1, "size":I
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    iget v2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mFirstPopulatedSlot:I

    if-ge v2, v1, :cond_1

    .line 391
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    iget v3, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mFirstPopulatedSlot:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->poll()Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    move-result-object v0

    .line 392
    if-nez v0, :cond_0

    .line 394
    iget v2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mFirstPopulatedSlot:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mFirstPopulatedSlot:I

    goto :goto_0

    .line 397
    :cond_1
    if-nez v0, :cond_2

    const/4 v2, 0x0

    return-object v2

    .line 398
    :cond_2
    iget-object v2, v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mApp:Lcom/android/server/am/ProcessRecord;

    return-object v2
.end method

.method reset()V
    .locals 2

    .line 311
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->reset()V

    .line 313
    invoke-virtual {p0, v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->setLastNodeToHead(I)V

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 315
    .end local v0    # "i":I
    return-void
.end method

.method reset(I)V
    .locals 1
    .param p1, "slot"    # I

    .line 462
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->reset()V

    .line 463
    return-void
.end method

.method resetLastNodes()V
    .locals 0

    .line 318
    nop

    .line 320
    invoke-virtual {p0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->reset()V

    .line 321
    return-void
.end method

.method setLastNodeToHead(I)V
    .locals 2
    .param p1, "slot"    # I

    .line 329
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mLastNode:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iget-object v1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->HEAD:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    aput-object v1, v0, p1

    .line 330
    return-void
.end method

.method size()I
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    array-length v0, v0

    return v0
.end method

.method toString(II)Ljava/lang/String;
    .locals 2
    .param p1, "slot"    # I
    .param p2, "logUid"    # I

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "lastNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mLastNode:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unlink(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 466
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mLinkedNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iget v1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mType:I

    aget-object v0, v0, v1

    .line 467
    .local v0, "node":Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;
    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->getCurrentSlot(Lcom/android/server/am/ProcessRecord;)I

    move-result v1

    .line 468
    .local v1, "slot":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 469
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mLastNode:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    aget-object v2, v2, v1

    if-ne v2, v0, :cond_0

    .line 470
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mLastNode:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iget-object v3, v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    aput-object v3, v2, v1

    .line 473
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->unlink()V

    .line 474
    return-void
.end method
