.class public interface abstract Lcom/nothing/server/ext/INtGlyph;
.super Ljava/lang/Object;
.source "INtGlyph.java"


# static fields
.field public static final DEFAULT:Lcom/nothing/server/ext/INtGlyph;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/nothing/server/ext/INtGlyph$1;

    invoke-direct {v0}, Lcom/nothing/server/ext/INtGlyph$1;-><init>()V

    sput-object v0, Lcom/nothing/server/ext/INtGlyph;->DEFAULT:Lcom/nothing/server/ext/INtGlyph;

    return-void
.end method


# virtual methods
.method public onRecord(Landroid/view/KeyEvent;Landroid/content/Context;)V
    .locals 0
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "context"    # Landroid/content/Context;

    .line 23
    return-void
.end method
