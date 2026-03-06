.class public final synthetic Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutService;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Landroid/content/IntentFilter;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;Ljava/util/List;Landroid/content/IntentFilter;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda22;->f$0:Lcom/android/server/pm/ShortcutService;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda22;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda22;->f$2:Landroid/content/IntentFilter;

    iput-object p4, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda22;->f$3:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda22;->f$4:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda22;->f$0:Lcom/android/server/pm/ShortcutService;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda22;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda22;->f$2:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda22;->f$3:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda22;->f$4:I

    move-object v5, p1

    check-cast v5, Lcom/android/server/pm/ShortcutPackage;

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/ShortcutService;->$r8$lambda$BDxZ_1YwzWEheF3kjK2n5LrPnRU(Lcom/android/server/pm/ShortcutService;Ljava/util/List;Landroid/content/IntentFilter;Ljava/lang/String;ILcom/android/server/pm/ShortcutPackage;)V

    return-void
.end method
