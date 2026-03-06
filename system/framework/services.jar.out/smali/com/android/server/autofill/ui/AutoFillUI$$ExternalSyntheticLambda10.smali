.class public final synthetic Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/AutoFillUI;

.field public final synthetic f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

.field public final synthetic f$10:Landroid/metrics/LogMaker;

.field public final synthetic f$11:Lcom/android/server/autofill/SaveEventLogger;

.field public final synthetic f$12:Z

.field public final synthetic f$13:Z

.field public final synthetic f$14:Z

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Lcom/android/server/autofill/ui/PendingUi;

.field public final synthetic f$4:Ljava/lang/CharSequence;

.field public final synthetic f$5:Landroid/graphics/drawable/Drawable;

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:Landroid/content/ComponentName;

.field public final synthetic f$8:Landroid/service/autofill/SaveInfo;

.field public final synthetic f$9:Landroid/service/autofill/ValueFinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/content/Context;Lcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Landroid/metrics/LogMaker;Lcom/android/server/autofill/SaveEventLogger;ZZZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iput-object p2, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda10;->f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    iput-object p3, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda10;->f$2:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda10;->f$3:Lcom/android/server/autofill/ui/PendingUi;

    iput-object p5, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda10;->f$4:Ljava/lang/CharSequence;

    iput-object p6, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda10;->f$5:Landroid/graphics/drawable/Drawable;

    iput-object p7, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda10;->f$6:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda10;->f$7:Landroid/content/ComponentName;

    iput-object p9, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda10;->f$8:Landroid/service/autofill/SaveInfo;

    iput-object p10, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda10;->f$9:Landroid/service/autofill/ValueFinder;

    iput-object p11, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda10;->f$10:Landroid/metrics/LogMaker;

    iput-object p12, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda10;->f$11:Lcom/android/server/autofill/SaveEventLogger;

    iput-boolean p13, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda10;->f$12:Z

    iput-boolean p14, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda10;->f$13:Z

    iput-boolean p15, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda10;->f$14:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 0
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda10;->f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    iget-object v2, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda10;->f$2:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda10;->f$3:Lcom/android/server/autofill/ui/PendingUi;

    iget-object v4, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda10;->f$4:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda10;->f$5:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda10;->f$6:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda10;->f$7:Landroid/content/ComponentName;

    iget-object v8, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda10;->f$8:Landroid/service/autofill/SaveInfo;

    iget-object v9, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda10;->f$9:Landroid/service/autofill/ValueFinder;

    iget-object v10, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda10;->f$10:Landroid/metrics/LogMaker;

    iget-object v11, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda10;->f$11:Lcom/android/server/autofill/SaveEventLogger;

    iget-boolean v12, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda10;->f$12:Z

    iget-boolean v13, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda10;->f$13:Z

    iget-boolean v14, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda10;->f$14:Z

    invoke-static/range {v0 .. v14}, Lcom/android/server/autofill/ui/AutoFillUI;->$r8$lambda$BQ5PwTGQkrD1cNp6KtZLSqedBU8(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/content/Context;Lcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Landroid/metrics/LogMaker;Lcom/android/server/autofill/SaveEventLogger;ZZZ)V

    return-void
.end method
