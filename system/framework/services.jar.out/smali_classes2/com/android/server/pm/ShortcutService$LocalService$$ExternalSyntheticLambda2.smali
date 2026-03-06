.class public final synthetic Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutService$LocalService;

.field public final synthetic f$1:I

.field public final synthetic f$10:I

.field public final synthetic f$11:I

.field public final synthetic f$12:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:Ljava/util/List;

.field public final synthetic f$5:J

.field public final synthetic f$6:Landroid/content/ComponentName;

.field public final synthetic f$7:I

.field public final synthetic f$8:I

.field public final synthetic f$9:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService$LocalService;ILjava/lang/String;Ljava/util/List;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;III)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/ShortcutService$LocalService;

    iput p2, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$3:Ljava/util/List;

    iput-object p5, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$4:Ljava/util/List;

    iput-wide p6, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$5:J

    iput-object p8, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$6:Landroid/content/ComponentName;

    iput p9, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$7:I

    iput p10, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$8:I

    iput-object p11, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$9:Ljava/util/ArrayList;

    iput p12, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$10:I

    iput p13, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$11:I

    iput p14, p0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$12:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 16

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/ShortcutService$LocalService;

    move-object v2, v1

    iget v1, v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$1:I

    move-object v3, v2

    iget-object v2, v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    move-object v4, v3

    iget-object v3, v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$3:Ljava/util/List;

    move-object v5, v4

    iget-object v4, v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$4:Ljava/util/List;

    move-object v7, v5

    iget-wide v5, v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$5:J

    move-object v8, v7

    iget-object v7, v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$6:Landroid/content/ComponentName;

    move-object v9, v8

    iget v8, v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$7:I

    move-object v10, v9

    iget v9, v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$8:I

    move-object v11, v10

    iget-object v10, v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$9:Ljava/util/ArrayList;

    move-object v12, v11

    iget v11, v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$10:I

    move-object v13, v12

    iget v12, v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$11:I

    iget v0, v0, Lcom/android/server/pm/ShortcutService$LocalService$$ExternalSyntheticLambda2;->f$12:I

    move-object/from16 v14, p1

    check-cast v14, Lcom/android/server/pm/ShortcutPackage;

    move-object v15, v13

    move v13, v0

    move-object v0, v15

    invoke-static/range {v0 .. v14}, Lcom/android/server/pm/ShortcutService$LocalService;->$r8$lambda$3lWA6IdBBMst2VF_gQSz1s4aYQs(Lcom/android/server/pm/ShortcutService$LocalService;ILjava/lang/String;Ljava/util/List;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;IIILcom/android/server/pm/ShortcutPackage;)V

    return-void
.end method
