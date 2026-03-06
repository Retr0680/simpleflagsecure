.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;
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

.field public final synthetic f$15:[J

.field public final synthetic f$16:[J

.field public final synthetic f$17:[J

.field public final synthetic f$18:[Ljava/util/ArrayList;

.field public final synthetic f$19:[J

.field public final synthetic f$2:Z

.field public final synthetic f$20:[J

.field public final synthetic f$3:Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;

.field public final synthetic f$4:[J

.field public final synthetic f$5:[J

.field public final synthetic f$6:[J

.field public final synthetic f$7:Ljava/util/ArrayList;

.field public final synthetic f$8:[J

.field public final synthetic f$9:[J


# direct methods
.method public synthetic constructor <init>(Landroid/util/SparseArray;[Landroid/os/Debug$MemoryInfo;ZLcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;[J[J[JLjava/util/ArrayList;[J[J[J[J[J[J[J[J[J[J[Ljava/util/ArrayList;[J[J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$0:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$1:[Landroid/os/Debug$MemoryInfo;

    iput-boolean p3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$2:Z

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$3:Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$4:[J

    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$5:[J

    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$6:[J

    iput-object p8, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$7:Ljava/util/ArrayList;

    iput-object p9, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$8:[J

    iput-object p10, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$9:[J

    iput-object p11, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$10:[J

    iput-object p12, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$11:[J

    iput-object p13, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$12:[J

    iput-object p14, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$13:[J

    iput-object p15, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$14:[J

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$15:[J

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$16:[J

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$17:[J

    move-object/from16 p1, p19

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$18:[Ljava/util/ArrayList;

    move-object/from16 p1, p20

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$19:[J

    move-object/from16 p1, p21

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$20:[J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 23

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$0:Landroid/util/SparseArray;

    move-object v2, v1

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$1:[Landroid/os/Debug$MemoryInfo;

    move-object v3, v2

    iget-boolean v2, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$2:Z

    move-object v4, v3

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$3:Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;

    move-object v5, v4

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$4:[J

    move-object v6, v5

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$5:[J

    move-object v7, v6

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$6:[J

    move-object v8, v7

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$7:Ljava/util/ArrayList;

    move-object v9, v8

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$8:[J

    move-object v10, v9

    iget-object v9, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$9:[J

    move-object v11, v10

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$10:[J

    move-object v12, v11

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$11:[J

    move-object v13, v12

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$12:[J

    move-object v14, v13

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$13:[J

    move-object v15, v14

    iget-object v14, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$14:[J

    move-object/from16 v16, v15

    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$15:[J

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$16:[J

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$17:[J

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$18:[Ljava/util/ArrayList;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$19:[J

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$20:[J

    move-object/from16 v21, p1

    check-cast v21, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-object/from16 v22, v20

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v22

    move-object/from16 v22, v19

    move-object/from16 v19, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v22

    invoke-static/range {v0 .. v21}, Lcom/android/server/am/ActivityManagerService;->$r8$lambda$7zhcH5xDi0N-HuNVw2A0ODwyr-E(Landroid/util/SparseArray;[Landroid/os/Debug$MemoryInfo;ZLcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;[J[J[JLjava/util/ArrayList;[J[J[J[J[J[J[J[J[J[J[Ljava/util/ArrayList;[J[JLcom/android/internal/os/ProcessCpuTracker$Stats;)V

    return-void
.end method
