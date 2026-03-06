.class final Lcom/android/server/policy/ModifierShortcutManager$ComponentBookmark;
.super Lcom/android/server/policy/ModifierShortcutManager$Bookmark;
.source "ModifierShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/ModifierShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ComponentBookmark"
.end annotation


# instance fields
.field private final mClassName:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(CZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "shortcutChar"    # C
    .param p2, "shift"    # Z
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "className"    # Ljava/lang/String;

    .line 1192
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;-><init>(CZ)V

    .line 1193
    iput-object p3, p0, Lcom/android/server/policy/ModifierShortcutManager$ComponentBookmark;->mPackageName:Ljava/lang/String;

    .line 1194
    iput-object p4, p0, Lcom/android/server/policy/ModifierShortcutManager$ComponentBookmark;->mClassName:Ljava/lang/String;

    .line 1195
    return-void
.end method


# virtual methods
.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 1200
    iget-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 1201
    iget-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->mIntent:Landroid/content/Intent;

    return-object v0

    .line 1203
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager$ComponentBookmark;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/policy/ModifierShortcutManager$ComponentBookmark;->mClassName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/server/policy/ModifierShortcutManager;->-$$Nest$smresolveComponentNameIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->mIntent:Landroid/content/Intent;

    .line 1204
    iget-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->mIntent:Landroid/content/Intent;

    return-object v0
.end method
