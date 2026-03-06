.class public final synthetic Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(ILandroid/util/SparseArray;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$$ExternalSyntheticLambda0;->f$1:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$$ExternalSyntheticLambda0;->f$0:I

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$$ExternalSyntheticLambda0;->f$1:Landroid/util/SparseArray;

    check-cast p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    check-cast p2, Ljava/util/List;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->$r8$lambda$n_9KW5yvJhkRtTpvb6O_xw66F3I(ILandroid/util/SparseArray;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Ljava/util/List;)V

    return-void
.end method
