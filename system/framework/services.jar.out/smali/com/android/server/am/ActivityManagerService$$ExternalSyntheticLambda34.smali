.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/SparseArray;

.field public final synthetic f$1:[Landroid/os/Debug$MemoryInfo;

.field public final synthetic f$10:[J

.field public final synthetic f$11:[J

.field public final synthetic f$12:[J

.field public final synthetic f$13:[J

.field public final synthetic f$14:[J

.field public final synthetic f$15:[Ljava/util/ArrayList;

.field public final synthetic f$16:[J

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;

.field public final synthetic f$4:[J

.field public final synthetic f$5:[J

.field public final synthetic f$6:Ljava/util/ArrayList;

.field public final synthetic f$7:[J

.field public final synthetic f$8:[J

.field public final synthetic f$9:[J


# direct methods
.method public synthetic constructor <init>(Landroid/util/SparseArray;[Landroid/os/Debug$MemoryInfo;ZLcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;[J[JLjava/util/ArrayList;[J[J[J[J[J[J[J[J[Ljava/util/ArrayList;[J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$0:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$1:[Landroid/os/Debug$MemoryInfo;

    iput-boolean p3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$2:Z

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$3:Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$4:[J

    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$5:[J

    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$6:Ljava/util/ArrayList;

    iput-object p8, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$7:[J

    iput-object p9, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$8:[J

    iput-object p10, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$9:[J

    iput-object p11, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$10:[J

    iput-object p12, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$11:[J

    iput-object p13, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$12:[J

    iput-object p14, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$13:[J

    iput-object p15, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$14:[J

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$15:[Ljava/util/ArrayList;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$16:[J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 19

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$0:Landroid/util/SparseArray;

    move-object v2, v1

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$1:[Landroid/os/Debug$MemoryInfo;

    move-object v3, v2

    iget-boolean v2, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$2:Z

    move-object v4, v3

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$3:Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;

    move-object v5, v4

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$4:[J

    move-object v6, v5

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$5:[J

    move-object v7, v6

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$6:Ljava/util/ArrayList;

    move-object v8, v7

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$7:[J

    move-object v9, v8

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$8:[J

    move-object v10, v9

    iget-object v9, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$9:[J

    move-object v11, v10

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$10:[J

    move-object v12, v11

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$11:[J

    move-object v13, v12

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$12:[J

    move-object v14, v13

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$13:[J

    move-object v15, v14

    iget-object v14, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$14:[J

    move-object/from16 v16, v15

    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$15:[Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda34;->f$16:[J

    move-object/from16 v17, p1

    check-cast v17, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-object/from16 v18, v16

    move-object/from16 v16, v0

    move-object/from16 v0, v18

    invoke-static/range {v0 .. v17}, Lcom/android/server/am/ActivityManagerService;->$r8$lambda$DKwlZvR09Lmkucx_ePLiXMSlVEA(Landroid/util/SparseArray;[Landroid/os/Debug$MemoryInfo;ZLcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;[J[JLjava/util/ArrayList;[J[J[J[J[J[J[J[J[Ljava/util/ArrayList;[JLcom/android/internal/os/ProcessCpuTracker$Stats;)V

    return-void
.end method
