.class final Lcom/android/server/inputmethod/InputMethodMenuControllerNew$DividerItem;
.super Ljava/lang/Object;
.source "InputMethodMenuControllerNew.java"

# interfaces
.implements Lcom/android/server/inputmethod/InputMethodMenuControllerNew$MenuItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodMenuControllerNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DividerItem"
.end annotation


# static fields
.field private static sInstance:Lcom/android/server/inputmethod/InputMethodMenuControllerNew$DividerItem;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInstance()Lcom/android/server/inputmethod/InputMethodMenuControllerNew$DividerItem;
    .locals 1

    .line 419
    sget-object v0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$DividerItem;->sInstance:Lcom/android/server/inputmethod/InputMethodMenuControllerNew$DividerItem;

    if-nez v0, :cond_0

    .line 420
    new-instance v0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$DividerItem;

    invoke-direct {v0}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$DividerItem;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$DividerItem;->sInstance:Lcom/android/server/inputmethod/InputMethodMenuControllerNew$DividerItem;

    .line 422
    :cond_0
    sget-object v0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$DividerItem;->sInstance:Lcom/android/server/inputmethod/InputMethodMenuControllerNew$DividerItem;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 427
    const-string v0, "DividerItem{}"

    return-object v0
.end method
