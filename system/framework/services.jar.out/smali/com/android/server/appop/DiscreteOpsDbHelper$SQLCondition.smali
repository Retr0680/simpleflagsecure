.class final Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;
.super Ljava/lang/Object;
.source "DiscreteOpsDbHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/DiscreteOpsDbHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SQLCondition"
.end annotation


# instance fields
.field private final mColumnFilter:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

.field private final mFilterValue:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$fgetmColumnFilter(Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;)Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;->mColumnFilter:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFilterValue(Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;->mFilterValue:Ljava/lang/Object;

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;Ljava/lang/Object;)V
    .locals 0
    .param p1, "columnFilter"    # Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;
    .param p2, "filterValue"    # Ljava/lang/Object;

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    iput-object p1, p0, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;->mColumnFilter:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    .line 342
    iput-object p2, p0, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;->mFilterValue:Ljava/lang/Object;

    .line 343
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;->mColumnFilter:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    sget-object v1, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;->OP_CODE_IN:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    if-ne v0, v1, :cond_0

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;->mColumnFilter:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;->mFilterValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;->mColumnFilter:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    invoke-virtual {v0}, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
