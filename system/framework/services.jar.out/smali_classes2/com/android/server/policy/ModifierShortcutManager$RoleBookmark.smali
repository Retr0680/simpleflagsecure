.class final Lcom/android/server/policy/ModifierShortcutManager$RoleBookmark;
.super Lcom/android/server/policy/ModifierShortcutManager$Bookmark;
.source "ModifierShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/ModifierShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RoleBookmark"
.end annotation


# instance fields
.field private final mRole:Ljava/lang/String;


# direct methods
.method constructor <init>(CZLjava/lang/String;)V
    .locals 0
    .param p1, "shortcutChar"    # C
    .param p2, "shift"    # Z
    .param p3, "role"    # Ljava/lang/String;

    .line 1147
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;-><init>(CZ)V

    .line 1148
    iput-object p3, p0, Lcom/android/server/policy/ModifierShortcutManager$RoleBookmark;->mRole:Ljava/lang/String;

    .line 1149
    return-void
.end method


# virtual methods
.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 1158
    iget-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 1159
    iget-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->mIntent:Landroid/content/Intent;

    return-object v0

    .line 1161
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager$RoleBookmark;->mRole:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/policy/ModifierShortcutManager;->-$$Nest$smgetRoleLaunchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->mIntent:Landroid/content/Intent;

    .line 1162
    iget-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    .line 1152
    iget-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager$RoleBookmark;->mRole:Ljava/lang/String;

    return-object v0
.end method
