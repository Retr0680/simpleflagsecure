.class final Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;
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
    name = "SubtypeItem"
.end annotation


# instance fields
.field final mImeName:Ljava/lang/CharSequence;

.field final mImi:Landroid/view/inputmethod/InputMethodInfo;

.field private final mLayoutName:Ljava/lang/CharSequence;

.field final mSubtypeIndex:I

.field final mSubtypeName:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLayoutName(Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;)Ljava/lang/CharSequence;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;->mLayoutName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/inputmethod/InputMethodInfo;I)V
    .locals 0
    .param p1, "imeName"    # Ljava/lang/CharSequence;
    .param p2, "subtypeName"    # Ljava/lang/CharSequence;
    .param p3, "layoutName"    # Ljava/lang/CharSequence;
    .param p4, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p5, "subtypeIndex"    # I

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;->mImeName:Ljava/lang/CharSequence;

    .line 376
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;->mSubtypeName:Ljava/lang/CharSequence;

    .line 377
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;->mLayoutName:Ljava/lang/CharSequence;

    .line 378
    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 379
    iput p5, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;->mSubtypeIndex:I

    .line 380
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubtypeItem{mImeName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;->mImeName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mSubtypeName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;->mSubtypeName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mSubtypeIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;->mSubtypeIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
