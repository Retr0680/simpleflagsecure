.class public Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;
.super Ljava/lang/Object;
.source "KeyboardMetricsCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mImeSubtypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation
.end field

.field private final mInputDevice:Landroid/view/InputDevice;

.field private mIsFirstConfiguration:Z

.field private final mLayoutSelectionCriteriaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectedLayoutList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/InputDevice;)V
    .locals 1
    .param p1, "inputDevice"    # Landroid/view/InputDevice;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;->mImeSubtypeList:Ljava/util/List;

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;->mSelectedLayoutList:Ljava/util/List;

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;->mLayoutSelectionCriteriaList:Ljava/util/List;

    .line 202
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    iput-object p1, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;->mInputDevice:Landroid/view/InputDevice;

    .line 204
    return-void
.end method


# virtual methods
.method public addLayoutSelection(Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;I)Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;
    .locals 2
    .param p1, "imeSubtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .param p2, "selectedLayout"    # Ljava/lang/String;
    .param p3, "layoutSelectionCriteria"    # I

    .line 220
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    invoke-static {p3}, Lcom/android/server/input/KeyboardMetricsCollector;->-$$Nest$smisValidSelectionCriteria(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;->mImeSubtypeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v0, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;->mSelectedLayoutList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    iget-object v0, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;->mLayoutSelectionCriteriaList:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    return-object p0

    .line 222
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid layout selection criteria"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;
    .locals 13

    .line 234
    iget-object v0, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;->mImeSubtypeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 235
    .local v0, "size":I
    if-eqz v0, :cond_5

    .line 238
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v1, "configurationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 240
    iget-object v3, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;->mLayoutSelectionCriteriaList:Ljava/util/List;

    .line 241
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 242
    .local v8, "layoutSelectionCriteria":I
    iget-object v3, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;->mImeSubtypeList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodSubtype;

    .line 243
    .local v3, "imeSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    iget-object v4, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;->mInputDevice:Landroid/view/InputDevice;

    invoke-virtual {v4}, Landroid/view/InputDevice;->getKeyboardLanguageTag()Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, "keyboardLanguageTag":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "None"

    if-eqz v5, :cond_0

    .line 245
    move-object v5, v6

    goto :goto_1

    :cond_0
    move-object v5, v4

    .line 246
    .end local v4    # "keyboardLanguageTag":Ljava/lang/String;
    .local v5, "keyboardLanguageTag":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;->mInputDevice:Landroid/view/InputDevice;

    .line 247
    invoke-virtual {v4}, Landroid/view/InputDevice;->getKeyboardLayoutType()Ljava/lang/String;

    move-result-object v4

    .line 246
    invoke-static {v4}, Landroid/hardware/input/KeyboardLayout$LayoutType;->getLayoutTypeEnumValue(Ljava/lang/String;)I

    move-result v4

    .line 249
    .local v4, "keyboardLayoutType":I
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getPhysicalKeyboardHintLanguageTag()Landroid/icu/util/ULocale;

    move-result-object v12

    .line 250
    .local v12, "pkLocale":Landroid/icu/util/ULocale;
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 251
    :cond_1
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getCanonicalizedLanguageTag()Ljava/lang/String;

    move-result-object v7

    :goto_2
    nop

    .line 252
    .local v7, "imeLanguageTag":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v10, v6

    goto :goto_3

    .line 253
    :cond_2
    move-object v10, v7

    :goto_3
    nop

    .line 254
    .end local v7    # "imeLanguageTag":Ljava/lang/String;
    .local v10, "imeLanguageTag":Ljava/lang/String;
    nop

    .line 255
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getPhysicalKeyboardHintLayoutType()Ljava/lang/String;

    move-result-object v6

    .line 254
    invoke-static {v6}, Landroid/hardware/input/KeyboardLayout$LayoutType;->getLayoutTypeEnumValue(Ljava/lang/String;)I

    move-result v9

    .line 258
    .local v9, "imeLayoutType":I
    iget-object v6, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;->mSelectedLayoutList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    .line 259
    const-string v6, "Default"

    move-object v7, v6

    goto :goto_4

    .line 260
    :cond_3
    iget-object v6, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;->mSelectedLayoutList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v7, v6

    :goto_4
    nop

    .line 262
    .local v7, "keyboardLayoutName":Ljava/lang/String;
    move-object v6, v5

    move v5, v4

    .end local v4    # "keyboardLayoutType":I
    .local v5, "keyboardLayoutType":I
    .local v6, "keyboardLanguageTag":Ljava/lang/String;
    new-instance v4, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;-><init>(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/android/server/input/KeyboardMetricsCollector-IA;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    .end local v3    # "imeSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v5    # "keyboardLayoutType":I
    .end local v6    # "keyboardLanguageTag":Ljava/lang/String;
    .end local v7    # "keyboardLayoutName":Ljava/lang/String;
    .end local v8    # "layoutSelectionCriteria":I
    .end local v9    # "imeLayoutType":I
    .end local v10    # "imeLanguageTag":Ljava/lang/String;
    .end local v12    # "pkLocale":Landroid/icu/util/ULocale;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    nop

    .line 267
    .end local v2    # "i":I
    new-instance v2, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;

    iget-object v3, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;->mInputDevice:Landroid/view/InputDevice;

    iget-boolean v4, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;->mIsFirstConfiguration:Z

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;-><init>(Landroid/view/InputDevice;ZLjava/util/List;Lcom/android/server/input/KeyboardMetricsCollector-IA;)V

    return-object v2

    .line 236
    .end local v1    # "configurationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;>;"
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Should have at least one configuration"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setIsFirstTimeConfiguration(Z)Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;
    .locals 0
    .param p1, "isFirstTimeConfiguration"    # Z

    .line 210
    iput-boolean p1, p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;->mIsFirstConfiguration:Z

    .line 211
    return-object p0
.end method
