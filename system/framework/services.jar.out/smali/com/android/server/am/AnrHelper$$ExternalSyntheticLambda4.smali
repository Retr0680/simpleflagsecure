.class public final synthetic Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AnrHelper;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/am/AnrHelper$AnrRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AnrHelper;ILcom/android/server/am/AnrHelper$AnrRecord;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/am/AnrHelper;

    iput p2, p0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda4;->f$1:I

    iput-object p3, p0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda4;->f$2:Lcom/android/server/am/AnrHelper$AnrRecord;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/am/AnrHelper;

    iget v1, p0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda4;->f$1:I

    iget-object v2, p0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda4;->f$2:Lcom/android/server/am/AnrHelper$AnrRecord;

    invoke-static {v0, v1, v2}, Lcom/android/server/am/AnrHelper;->$r8$lambda$fRf1qJdJXgwGn4epRI8YCRLma3k(Lcom/android/server/am/AnrHelper;ILcom/android/server/am/AnrHelper$AnrRecord;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
