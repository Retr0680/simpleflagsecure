.class abstract Lcom/android/server/policy/ModifierShortcutManager$Bookmark;
.super Ljava/lang/Object;
.source "ModifierShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/ModifierShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Bookmark"
.end annotation


# instance fields
.field protected mIntent:Landroid/content/Intent;

.field private final mShift:Z

.field private final mShortcutChar:C


# direct methods
.method constructor <init>(CZ)V
    .locals 0
    .param p1, "shortcutChar"    # C
    .param p2, "shift"    # Z

    .line 1122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1123
    iput-char p1, p0, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->mShortcutChar:C

    .line 1124
    iput-boolean p2, p0, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->mShift:Z

    .line 1125
    return-void
.end method


# virtual methods
.method public clearIntent()V
    .locals 1

    .line 1138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->mIntent:Landroid/content/Intent;

    .line 1139
    return-void
.end method

.method public abstract getIntent(Landroid/content/Context;)Landroid/content/Intent;
.end method

.method public getShortcutChar()C
    .locals 1

    .line 1128
    iget-char v0, p0, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->mShortcutChar:C

    return v0
.end method

.method public isShift()Z
    .locals 1

    .line 1132
    iget-boolean v0, p0, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->mShift:Z

    return v0
.end method
