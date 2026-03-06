.class final Lcom/android/server/policy/ModifierShortcutManager$CategoryBookmark;
.super Lcom/android/server/policy/ModifierShortcutManager$Bookmark;
.source "ModifierShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/ModifierShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CategoryBookmark"
.end annotation


# instance fields
.field private final mCategory:Ljava/lang/String;


# direct methods
.method constructor <init>(CZLjava/lang/String;)V
    .locals 0
    .param p1, "shortcutChar"    # C
    .param p2, "shift"    # Z
    .param p3, "category"    # Ljava/lang/String;

    .line 1170
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;-><init>(CZ)V

    .line 1171
    iput-object p3, p0, Lcom/android/server/policy/ModifierShortcutManager$CategoryBookmark;->mCategory:Ljava/lang/String;

    .line 1172
    return-void
.end method


# virtual methods
.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 1177
    iget-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 1178
    iget-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->mIntent:Landroid/content/Intent;

    return-object v0

    .line 1181
    :cond_0
    const-string v0, "android.intent.action.MAIN"

    iget-object v1, p0, Lcom/android/server/policy/ModifierShortcutManager$CategoryBookmark;->mCategory:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->mIntent:Landroid/content/Intent;

    .line 1182
    iget-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->mIntent:Landroid/content/Intent;

    return-object v0
.end method
