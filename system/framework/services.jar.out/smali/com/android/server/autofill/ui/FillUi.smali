.class final Lcom/android/server/autofill/ui/FillUi;
.super Ljava/lang/Object;
.source "FillUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;,
        Lcom/android/server/autofill/ui/FillUi$Callback;,
        Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;,
        Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;,
        Lcom/android/server/autofill/ui/FillUi$ViewItem;,
        Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FillUi"

.field private static final THEME_ID_DARK:I = 0x10303ff

.field private static final THEME_ID_LIGHT:I = 0x103040c

.field private static final sTempTypedValue:Landroid/util/TypedValue;


# instance fields
.field private final mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

.field private mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

.field private final mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

.field private mContentHeight:I

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mFilterText:Ljava/lang/String;

.field private mFooter:Landroid/view/View;

.field private final mFullScreen:Z

.field private final mHeader:Landroid/view/View;

.field private final mIsCredmanAutofillSession:Z

.field private final mListView:Landroid/widget/ListView;

.field private mMaxInputLengthForAutofill:I

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mThemeId:I

.field private final mUserContext:Landroid/content/Context;

.field private final mVisibleDatasetsMaxCount:I

.field private final mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

.field private final mWindowManager:Landroid/view/WindowManager;

.field private final mWindowPresenter:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;


# direct methods
.method public static synthetic $r8$lambda$34G_vgWdPNb_VNs6BEExHzv5Pk8(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/autofill/ui/FillUi;->lambda$newInteractionBlocker$6(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$7F2rvuaWbO6qvVHwfQ3qB74qekA(Lcom/android/server/autofill/ui/FillUi;Landroid/service/autofill/FillResponse;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/ui/FillUi;->lambda$new$2(Landroid/service/autofill/FillResponse;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8YFNiTVCPCYpyFFOF5e2Jdn6KRc(Lcom/android/server/autofill/ui/FillUi;Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/ui/FillUi;->lambda$new$0(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$KryltzAJDRfLvAXPjRUB95Qbh0Q(Lcom/android/server/autofill/ui/FillUi;Landroid/service/autofill/Dataset;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/ui/FillUi;->lambda$new$3(Landroid/service/autofill/Dataset;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XCOe_IjVqT1Jpeqy78g9tVUVGAg(Lcom/android/server/autofill/ui/FillUi;Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/ui/FillUi;->lambda$new$1(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$hlZkhNRIhvgVnuIz4QbJ_CPrMCs(Lcom/android/server/autofill/ui/FillUi;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/ui/FillUi;->lambda$applyNewFilterText$7(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$sWAG5jaC8KAFACD7R8-PM4Zjm9s(Lcom/android/server/autofill/ui/FillUi;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/autofill/ui/FillUi;->lambda$new$4(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$urMFEkR1A2bMKiddnOYc1HMe0Ec(Lcom/android/server/autofill/ui/FillUi;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/FillUi;->lambda$applyCancelAction$5(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAdapter(Lcom/android/server/autofill/ui/FillUi;)Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/autofill/ui/FillUi;)Lcom/android/server/autofill/ui/FillUi$Callback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/autofill/ui/FillUi;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListView(Lcom/android/server/autofill/ui/FillUi;)Landroid/widget/ListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWindow(Lcom/android/server/autofill/ui/FillUi;)Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mannounceSearchResultIfNeeded(Lcom/android/server/autofill/ui/FillUi;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi;->announceSearchResultIfNeeded()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 87
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Lcom/android/server/autofill/ui/FillUi;->sTempTypedValue:Landroid/util/TypedValue;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Lcom/android/server/autofill/ui/OverlayControl;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZILcom/android/server/autofill/ui/FillUi$Callback;)V
    .locals 32
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "response"    # Landroid/service/autofill/FillResponse;
    .param p3, "focusedViewId"    # Landroid/view/autofill/AutofillId;
    .param p4, "filterText"    # Ljava/lang/String;
    .param p5, "overlayControl"    # Lcom/android/server/autofill/ui/OverlayControl;
    .param p6, "serviceLabel"    # Ljava/lang/CharSequence;
    .param p7, "serviceIcon"    # Landroid/graphics/drawable/Drawable;
    .param p8, "nightMode"    # Z
    .param p9, "maxInputLengthForAutofill"    # I
    .param p10, "callback"    # Lcom/android/server/autofill/ui/FillUi$Callback;

    .line 155
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mTempPoint:Landroid/graphics/Point;

    .line 106
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;-><init>(Lcom/android/server/autofill/ui/FillUi;Lcom/android/server/autofill/ui/FillUi-IA;)V

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mWindowPresenter:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    .line 156
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v5, "FillUi"

    if-eqz v0, :cond_0

    .line 157
    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getDisplayId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v6, "nightMode: %b displayId: %d"

    invoke-static {v5, v6, v0}, Lcom/android/server/utils/Slogf;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    :cond_0
    if-eqz p8, :cond_1

    const v0, 0x10303ff

    goto :goto_0

    :cond_1
    const v0, 0x103040c

    :goto_0
    iput v0, v1, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I

    .line 160
    move-object/from16 v6, p10

    iput-object v6, v1, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    .line 161
    invoke-static/range {p1 .. p1}, Lcom/android/server/autofill/ui/FillUi;->isFullScreen(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    .line 162
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v7, v1, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I

    move-object/from16 v8, p1

    invoke-direct {v0, v8, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    .line 163
    iget-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/autofill/Helper;->getUserContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mUserContext:Landroid/content/Context;

    .line 164
    move/from16 v7, p9

    iput v7, v1, Lcom/android/server/autofill/ui/FillUi;->mMaxInputLengthForAutofill:I

    .line 165
    nop

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/4 v10, 0x1

    if-eqz v0, :cond_2

    move v0, v10

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, v1, Lcom/android/server/autofill/ui/FillUi;->mIsCredmanAutofillSession:Z

    .line 167
    iget-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    const-class v11, Landroid/view/WindowManager;

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mWindowManager:Landroid/view/WindowManager;

    .line 169
    iget-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 171
    .local v11, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getHeader()Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v12

    .line 172
    .local v12, "headerPresentation":Landroid/widget/RemoteViews;
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getFooter()Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v13

    .line 175
    .local v13, "footerPresentation":Landroid/widget/RemoteViews;
    iget-boolean v0, v1, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    if-eqz v0, :cond_3

    .line 176
    const v0, 0x1090049

    invoke-virtual {v11, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v14, v0

    .local v0, "decor":Landroid/view/ViewGroup;
    goto :goto_3

    .line 177
    .end local v0    # "decor":Landroid/view/ViewGroup;
    :cond_3
    if-nez v12, :cond_4

    if-nez v13, :cond_4

    iget-boolean v0, v1, Lcom/android/server/autofill/ui/FillUi;->mIsCredmanAutofillSession:Z

    if-eqz v0, :cond_5

    :cond_4
    goto :goto_2

    .line 182
    :cond_5
    const v0, 0x1090048

    invoke-virtual {v11, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v14, v0

    .restart local v0    # "decor":Landroid/view/ViewGroup;
    goto :goto_3

    .line 179
    .end local v0    # "decor":Landroid/view/ViewGroup;
    :goto_2
    const v0, 0x109004a

    invoke-virtual {v11, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v14, v0

    .line 184
    .local v14, "decor":Landroid/view/ViewGroup;
    :goto_3
    invoke-virtual {v14, v10}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    .line 185
    const v0, 0x102022d

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/TextView;

    .line 186
    .local v15, "titleView":Landroid/widget/TextView;
    if-eqz v15, :cond_6

    .line 187
    iget-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    const v9, 0x104019a

    filled-new-array/range {p6 .. p6}, [Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    :cond_6
    const v0, 0x102022a

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/ImageView;

    .line 190
    .local v9, "iconView":Landroid/widget/ImageView;
    if-eqz v9, :cond_7

    .line 191
    move-object/from16 v10, p7

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 190
    :cond_7
    move-object/from16 v10, p7

    .line 195
    :goto_4
    iget-boolean v0, v1, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    if-eqz v0, :cond_9

    .line 196
    iget-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mTempPoint:Landroid/graphics/Point;

    .line 197
    .local v0, "outPoint":Landroid/graphics/Point;
    iget-object v4, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 199
    const/4 v4, -0x1

    iput v4, v1, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 200
    iget v4, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v4, 0x2

    iput v4, v1, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    .line 201
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_8

    .line 202
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    .end local v0    # "outPoint":Landroid/graphics/Point;
    .local v17, "outPoint":Landroid/graphics/Point;
    const-string/jumbo v0, "initialized fillscreen LayoutParams "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 201
    .end local v17    # "outPoint":Landroid/graphics/Point;
    .restart local v0    # "outPoint":Landroid/graphics/Point;
    :cond_8
    move-object/from16 v17, v0

    .line 208
    .end local v0    # "outPoint":Landroid/graphics/Point;
    :cond_9
    :goto_5
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda3;

    invoke-direct {v0, v1}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->addOnUnhandledKeyEventListener(Landroid/view/View$OnUnhandledKeyEventListener;)V

    .line 225
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getVisibleDatasetsMaxCount()I

    move-result v0

    if-lez v0, :cond_a

    .line 226
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getVisibleDatasetsMaxCount()I

    move-result v0

    iput v0, v1, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    .line 227
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_b

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "overriding maximum visible datasets to "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 231
    :cond_a
    iget-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 232
    const v4, 0x10e0009

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    .line 235
    :cond_b
    :goto_6
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda4;

    invoke-direct {v0, v1}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    move-object v4, v0

    .line 242
    .local v4, "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v0

    const-string v6, "Error inflating remote views"

    if-eqz v0, :cond_f

    .line 243
    const/4 v7, 0x0

    iput-object v7, v1, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    .line 244
    iput-object v7, v1, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    .line 245
    iput-object v7, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    .line 246
    iput-object v7, v1, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    .line 249
    const v0, 0x102022c

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/view/ViewGroup;

    .line 252
    .local v7, "container":Landroid/view/ViewGroup;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getPresentation()Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getPresentation()Landroid/widget/RemoteViews;

    move-result-object v0

    iget-object v8, v1, Lcom/android/server/autofill/ui/FillUi;->mUserContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v17, v9

    .end local v9    # "iconView":Landroid/widget/ImageView;
    .local v17, "iconView":Landroid/widget/ImageView;
    :try_start_1
    iget v9, v1, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I

    invoke-virtual {v0, v8, v14, v4, v9}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    move-result-object v0

    .line 257
    .local v0, "content":Landroid/view/View;
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 263
    nop

    .line 264
    const/4 v5, 0x1

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 265
    new-instance v5, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda5;

    move-object/from16 v8, p2

    invoke-direct {v5, v1, v8}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/autofill/ui/FillUi;Landroid/service/autofill/FillResponse;)V

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-boolean v5, v1, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    if-nez v5, :cond_d

    .line 268
    iget-object v5, v1, Lcom/android/server/autofill/ui/FillUi;->mTempPoint:Landroid/graphics/Point;

    .line 269
    .local v5, "maxSize":Landroid/graphics/Point;
    iget-object v6, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/android/server/autofill/ui/FillUi;->resolveMaxWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 271
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget-boolean v9, v1, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    move-object/from16 v16, v0

    .end local v0    # "content":Landroid/view/View;
    .local v16, "content":Landroid/view/View;
    const/4 v0, -0x2

    if-eqz v9, :cond_c

    iget v9, v5, Landroid/graphics/Point;->x:I

    goto :goto_7

    .line 272
    :cond_c
    move v9, v0

    :goto_7
    iput v9, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 273
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v0, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 274
    iget v0, v5, Landroid/graphics/Point;->x:I

    const/high16 v6, -0x80000000

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 276
    .local v0, "widthMeasureSpec":I
    iget v9, v5, Landroid/graphics/Point;->y:I

    invoke-static {v9, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 279
    .local v6, "heightMeasureSpec":I
    invoke-virtual {v14, v0, v6}, Landroid/view/ViewGroup;->measure(II)V

    .line 280
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    iput v9, v1, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 281
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    iput v9, v1, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    goto :goto_8

    .line 267
    .end local v5    # "maxSize":Landroid/graphics/Point;
    .end local v6    # "heightMeasureSpec":I
    .end local v16    # "content":Landroid/view/View;
    .local v0, "content":Landroid/view/View;
    :cond_d
    move-object/from16 v16, v0

    .line 284
    .end local v0    # "content":Landroid/view/View;
    .restart local v16    # "content":Landroid/view/View;
    :goto_8
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-direct {v0, v1, v14, v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;-><init>(Lcom/android/server/autofill/ui/FillUi;Landroid/view/View;Lcom/android/server/autofill/ui/OverlayControl;)V

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    .line 285
    invoke-virtual {v1}, Lcom/android/server/autofill/ui/FillUi;->requestShowFillUi()V

    .line 286
    .end local v7    # "container":Landroid/view/ViewGroup;
    .end local v16    # "content":Landroid/view/View;
    move-object/from16 v30, v4

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move-object/from16 v29, v13

    goto/16 :goto_15

    .line 258
    .restart local v7    # "container":Landroid/view/ViewGroup;
    :catch_0
    move-exception v0

    move-object/from16 v8, p2

    goto :goto_9

    .end local v17    # "iconView":Landroid/widget/ImageView;
    .restart local v9    # "iconView":Landroid/widget/ImageView;
    :catch_1
    move-exception v0

    move-object/from16 v8, p2

    move-object/from16 v17, v9

    .end local v9    # "iconView":Landroid/widget/ImageView;
    .restart local v17    # "iconView":Landroid/widget/ImageView;
    goto :goto_9

    .line 253
    .end local v17    # "iconView":Landroid/widget/ImageView;
    .restart local v9    # "iconView":Landroid/widget/ImageView;
    :cond_e
    move-object/from16 v8, p2

    move-object/from16 v17, v9

    .end local v9    # "iconView":Landroid/widget/ImageView;
    .restart local v17    # "iconView":Landroid/widget/ImageView;
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v9, "Permission error accessing RemoteView"

    invoke-direct {v0, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v4    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    .end local v7    # "container":Landroid/view/ViewGroup;
    .end local v11    # "inflater":Landroid/view/LayoutInflater;
    .end local v12    # "headerPresentation":Landroid/widget/RemoteViews;
    .end local v13    # "footerPresentation":Landroid/widget/RemoteViews;
    .end local v14    # "decor":Landroid/view/ViewGroup;
    .end local v15    # "titleView":Landroid/widget/TextView;
    .end local v17    # "iconView":Landroid/widget/ImageView;
    .end local p0    # "this":Lcom/android/server/autofill/ui/FillUi;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "response":Landroid/service/autofill/FillResponse;
    .end local p3    # "focusedViewId":Landroid/view/autofill/AutofillId;
    .end local p4    # "filterText":Ljava/lang/String;
    .end local p5    # "overlayControl":Lcom/android/server/autofill/ui/OverlayControl;
    .end local p6    # "serviceLabel":Ljava/lang/CharSequence;
    .end local p7    # "serviceIcon":Landroid/graphics/drawable/Drawable;
    .end local p8    # "nightMode":Z
    .end local p9    # "maxInputLengthForAutofill":I
    .end local p10    # "callback":Lcom/android/server/autofill/ui/FillUi$Callback;
    throw v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 258
    .restart local v4    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    .restart local v7    # "container":Landroid/view/ViewGroup;
    .restart local v11    # "inflater":Landroid/view/LayoutInflater;
    .restart local v12    # "headerPresentation":Landroid/widget/RemoteViews;
    .restart local v13    # "footerPresentation":Landroid/widget/RemoteViews;
    .restart local v14    # "decor":Landroid/view/ViewGroup;
    .restart local v15    # "titleView":Landroid/widget/TextView;
    .restart local v17    # "iconView":Landroid/widget/ImageView;
    .restart local p0    # "this":Lcom/android/server/autofill/ui/FillUi;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "response":Landroid/service/autofill/FillResponse;
    .restart local p3    # "focusedViewId":Landroid/view/autofill/AutofillId;
    .restart local p4    # "filterText":Ljava/lang/String;
    .restart local p5    # "overlayControl":Lcom/android/server/autofill/ui/OverlayControl;
    .restart local p6    # "serviceLabel":Ljava/lang/CharSequence;
    .restart local p7    # "serviceIcon":Landroid/graphics/drawable/Drawable;
    .restart local p8    # "nightMode":Z
    .restart local p9    # "maxInputLengthForAutofill":I
    .restart local p10    # "callback":Lcom/android/server/autofill/ui/FillUi$Callback;
    :catch_2
    move-exception v0

    :goto_9
    nop

    .line 259
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-interface/range {p10 .. p10}, Lcom/android/server/autofill/ui/FillUi$Callback;->onCanceled()V

    .line 260
    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    .line 262
    return-void

    .line 287
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v7    # "container":Landroid/view/ViewGroup;
    .end local v17    # "iconView":Landroid/widget/ImageView;
    .restart local v9    # "iconView":Landroid/widget/ImageView;
    :cond_f
    move-object/from16 v8, p2

    move-object/from16 v17, v9

    .end local v9    # "iconView":Landroid/widget/ImageView;
    .restart local v17    # "iconView":Landroid/widget/ImageView;
    invoke-virtual {v8}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .line 288
    .local v7, "datasetCount":I
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_10

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Number datasets: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " max visible: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_10
    const/4 v0, 0x0

    .line 294
    .local v0, "interactionBlocker":Landroid/widget/RemoteViews$InteractionHandler;
    if-eqz v12, :cond_12

    .line 295
    invoke-direct {v1}, Lcom/android/server/autofill/ui/FillUi;->newInteractionBlocker()Landroid/widget/RemoteViews$InteractionHandler;

    move-result-object v0

    .line 296
    iget-object v9, v1, Lcom/android/server/autofill/ui/FillUi;->mUserContext:Landroid/content/Context;

    iget v8, v1, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I

    const/4 v10, 0x0

    invoke-virtual {v12, v9, v10, v0, v8}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    .line 298
    nop

    .line 299
    const v8, 0x1020229

    invoke-virtual {v14, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 300
    .local v8, "headerContainer":Landroid/widget/LinearLayout;
    iget-object v9, v1, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getCancelIds()[I

    move-result-object v10

    invoke-direct {v1, v9, v10}, Lcom/android/server/autofill/ui/FillUi;->applyCancelAction(Landroid/view/View;[I)V

    .line 301
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v9, :cond_11

    const-string v9, "adding header"

    invoke-static {v5, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_11
    iget-object v9, v1, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 303
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 304
    .end local v8    # "headerContainer":Landroid/widget/LinearLayout;
    goto :goto_a

    .line 305
    :cond_12
    const/4 v10, 0x0

    iput-object v10, v1, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    .line 308
    :goto_a
    const-string v8, "adding footer"

    const v9, 0x1020228

    if-eqz v13, :cond_16

    iget-boolean v10, v1, Lcom/android/server/autofill/ui/FillUi;->mIsCredmanAutofillSession:Z

    if-nez v10, :cond_16

    .line 309
    nop

    .line 310
    invoke-virtual {v14, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 311
    .local v10, "footerContainer":Landroid/widget/LinearLayout;
    if-eqz v10, :cond_15

    .line 312
    if-nez v0, :cond_13

    .line 313
    invoke-direct {v1}, Lcom/android/server/autofill/ui/FillUi;->newInteractionBlocker()Landroid/widget/RemoteViews$InteractionHandler;

    move-result-object v0

    .line 315
    :cond_13
    iget-object v9, v1, Lcom/android/server/autofill/ui/FillUi;->mUserContext:Landroid/content/Context;

    move-object/from16 v18, v11

    .end local v11    # "inflater":Landroid/view/LayoutInflater;
    .local v18, "inflater":Landroid/view/LayoutInflater;
    iget v11, v1, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I

    move-object/from16 v19, v12

    const/4 v12, 0x0

    .end local v12    # "headerPresentation":Landroid/widget/RemoteViews;
    .local v19, "headerPresentation":Landroid/widget/RemoteViews;
    invoke-virtual {v13, v9, v12, v0, v11}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    .line 317
    iget-object v9, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getCancelIds()[I

    move-result-object v11

    invoke-direct {v1, v9, v11}, Lcom/android/server/autofill/ui/FillUi;->applyCancelAction(Landroid/view/View;[I)V

    .line 319
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v9, :cond_14

    invoke-static {v5, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_14
    iget-object v9, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 321
    const/4 v9, 0x0

    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v12, 0x0

    goto :goto_b

    .line 323
    .end local v18    # "inflater":Landroid/view/LayoutInflater;
    .end local v19    # "headerPresentation":Landroid/widget/RemoteViews;
    .restart local v11    # "inflater":Landroid/view/LayoutInflater;
    .restart local v12    # "headerPresentation":Landroid/widget/RemoteViews;
    :cond_15
    move-object/from16 v18, v11

    move-object/from16 v19, v12

    .end local v11    # "inflater":Landroid/view/LayoutInflater;
    .end local v12    # "headerPresentation":Landroid/widget/RemoteViews;
    .restart local v18    # "inflater":Landroid/view/LayoutInflater;
    .restart local v19    # "headerPresentation":Landroid/widget/RemoteViews;
    const/4 v12, 0x0

    iput-object v12, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    .line 325
    .end local v10    # "footerContainer":Landroid/widget/LinearLayout;
    :goto_b
    move-object v9, v0

    goto :goto_c

    .line 308
    .end local v18    # "inflater":Landroid/view/LayoutInflater;
    .end local v19    # "headerPresentation":Landroid/widget/RemoteViews;
    .restart local v11    # "inflater":Landroid/view/LayoutInflater;
    .restart local v12    # "headerPresentation":Landroid/widget/RemoteViews;
    :cond_16
    move-object/from16 v18, v11

    move-object/from16 v19, v12

    const/4 v12, 0x0

    .line 326
    .end local v11    # "inflater":Landroid/view/LayoutInflater;
    .end local v12    # "headerPresentation":Landroid/widget/RemoteViews;
    .restart local v18    # "inflater":Landroid/view/LayoutInflater;
    .restart local v19    # "headerPresentation":Landroid/widget/RemoteViews;
    iput-object v12, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    move-object v9, v0

    .line 329
    .end local v0    # "interactionBlocker":Landroid/widget/RemoteViews$InteractionHandler;
    .local v9, "interactionBlocker":Landroid/widget/RemoteViews$InteractionHandler;
    :goto_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    move-object v10, v0

    .line 330
    .local v10, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/autofill/ui/FillUi$ViewItem;>;"
    const/4 v0, 0x0

    move v11, v0

    .local v11, "i":I
    :goto_d
    if-ge v11, v7, :cond_21

    .line 331
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/service/autofill/Dataset;

    .line 332
    .local v12, "dataset":Landroid/service/autofill/Dataset;
    invoke-virtual {v12}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v0

    move/from16 v26, v7

    .end local v7    # "datasetCount":I
    .local v26, "datasetCount":I
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 333
    .local v7, "index":I
    if-ltz v7, :cond_20

    .line 334
    nop

    .line 335
    invoke-virtual {v12, v7}, Landroid/service/autofill/Dataset;->getFieldPresentation(I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 334
    move-object/from16 v27, v9

    .end local v9    # "interactionBlocker":Landroid/widget/RemoteViews$InteractionHandler;
    .local v27, "interactionBlocker":Landroid/widget/RemoteViews$InteractionHandler;
    invoke-static {v0}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v9

    .line 336
    .local v9, "presentation":Landroid/widget/RemoteViews;
    if-nez v9, :cond_17

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v28, v11

    .end local v11    # "i":I
    .local v28, "i":I
    const-string/jumbo v11, "not displaying UI on field "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " because service didn\'t provide a presentation for it on "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    move-object/from16 v30, v4

    move-object/from16 v29, v13

    const/4 v13, 0x1

    goto/16 :goto_13

    .line 343
    .end local v28    # "i":I
    .restart local v11    # "i":I
    :cond_17
    move/from16 v28, v11

    .end local v11    # "i":I
    .restart local v28    # "i":I
    :try_start_3
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5

    if-eqz v0, :cond_18

    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setting remote view for "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_e

    .line 346
    :catch_3
    move-exception v0

    move-object/from16 v30, v4

    move-object/from16 v31, v9

    move-object/from16 v21, v12

    move-object/from16 v29, v13

    const/4 v13, 0x1

    goto/16 :goto_12

    .line 344
    :cond_18
    :goto_e
    :try_start_5
    iget-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mUserContext:Landroid/content/Context;

    iget v11, v1, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    move-object/from16 v29, v13

    const/4 v13, 0x0

    .end local v13    # "footerPresentation":Landroid/widget/RemoteViews;
    .local v29, "footerPresentation":Landroid/widget/RemoteViews;
    :try_start_6
    invoke-virtual {v9, v0, v13, v4, v11}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    move-result-object v25
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    move-object/from16 v0, v25

    .line 349
    .local v0, "view":Landroid/view/View;
    nop

    .line 352
    invoke-virtual {v12, v7}, Landroid/service/autofill/Dataset;->getFilter(I)Landroid/service/autofill/Dataset$DatasetFieldFilter;

    move-result-object v11

    .line 353
    .local v11, "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    const/4 v13, 0x0

    .line 354
    .local v13, "filterPattern":Ljava/util/regex/Pattern;
    const/16 v20, 0x0

    .line 355
    .local v20, "valueText":Ljava/lang/String;
    const/16 v21, 0x1

    .line 356
    .local v21, "filterable":Z
    if-nez v11, :cond_1a

    .line 357
    move-object/from16 v30, v4

    .end local v4    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    .local v30, "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    invoke-virtual {v12}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillValue;

    .line 358
    .local v4, "value":Landroid/view/autofill/AutofillValue;
    if-eqz v4, :cond_19

    invoke-virtual {v4}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v22

    if-eqz v22, :cond_19

    .line 359
    invoke-virtual {v4}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    .line 361
    .end local v4    # "value":Landroid/view/autofill/AutofillValue;
    :cond_19
    move-object/from16 v31, v9

    move-object/from16 v22, v13

    move-object/from16 v24, v20

    move/from16 v23, v21

    goto :goto_10

    .line 362
    .end local v30    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    .local v4, "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    :cond_1a
    move-object/from16 v30, v4

    .end local v4    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    .restart local v30    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    iget-object v13, v11, Landroid/service/autofill/Dataset$DatasetFieldFilter;->pattern:Ljava/util/regex/Pattern;

    .line 363
    if-nez v13, :cond_1c

    .line 364
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_1b

    .line 365
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v9

    .end local v9    # "presentation":Landroid/widget/RemoteViews;
    .local v31, "presentation":Landroid/widget/RemoteViews;
    const-string v9, "Explicitly disabling filter at id "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " for dataset #"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 364
    .end local v31    # "presentation":Landroid/widget/RemoteViews;
    .restart local v9    # "presentation":Landroid/widget/RemoteViews;
    :cond_1b
    move-object/from16 v31, v9

    .line 368
    .end local v9    # "presentation":Landroid/widget/RemoteViews;
    .restart local v31    # "presentation":Landroid/widget/RemoteViews;
    :goto_f
    const/16 v21, 0x0

    move-object/from16 v22, v13

    move-object/from16 v24, v20

    move/from16 v23, v21

    goto :goto_10

    .line 363
    .end local v31    # "presentation":Landroid/widget/RemoteViews;
    .restart local v9    # "presentation":Landroid/widget/RemoteViews;
    :cond_1c
    move-object/from16 v31, v9

    .end local v9    # "presentation":Landroid/widget/RemoteViews;
    .restart local v31    # "presentation":Landroid/widget/RemoteViews;
    move-object/from16 v22, v13

    move-object/from16 v24, v20

    move/from16 v23, v21

    .line 372
    .end local v13    # "filterPattern":Ljava/util/regex/Pattern;
    .end local v20    # "valueText":Ljava/lang/String;
    .end local v21    # "filterable":Z
    .local v22, "filterPattern":Ljava/util/regex/Pattern;
    .local v23, "filterable":Z
    .local v24, "valueText":Ljava/lang/String;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getCancelIds()[I

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/android/server/autofill/ui/FillUi;->applyCancelAction(Landroid/view/View;[I)V

    .line 373
    const-string v4, "PINNED_DATASET_ID"

    invoke-virtual {v12}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    iget-boolean v4, v1, Lcom/android/server/autofill/ui/FillUi;->mIsCredmanAutofillSession:Z

    if-eqz v4, :cond_1f

    .line 374
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1e

    .line 375
    nop

    .line 376
    const v4, 0x1020228

    invoke-virtual {v14, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 377
    .local v9, "footerContainer":Landroid/widget/LinearLayout;
    sget-boolean v13, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v13, :cond_1d

    .line 378
    invoke-static {v5, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_1d
    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    .line 381
    iget-object v13, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    invoke-virtual {v9, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 382
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 383
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 384
    new-instance v4, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda6;

    invoke-direct {v4, v1, v12}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/autofill/ui/FillUi;Landroid/service/autofill/Dataset;)V

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    .end local v9    # "footerContainer":Landroid/widget/LinearLayout;
    goto :goto_13

    .line 374
    :cond_1e
    const/4 v13, 0x1

    goto :goto_11

    .line 373
    :cond_1f
    const/4 v13, 0x1

    .line 386
    :goto_11
    new-instance v20, Lcom/android/server/autofill/ui/FillUi$ViewItem;

    move-object/from16 v25, v0

    move-object/from16 v21, v12

    .end local v0    # "view":Landroid/view/View;
    .end local v12    # "dataset":Landroid/service/autofill/Dataset;
    .local v21, "dataset":Landroid/service/autofill/Dataset;
    .local v25, "view":Landroid/view/View;
    invoke-direct/range {v20 .. v25}, Lcom/android/server/autofill/ui/FillUi$ViewItem;-><init>(Landroid/service/autofill/Dataset;Ljava/util/regex/Pattern;ZLjava/lang/String;Landroid/view/View;)V

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 346
    .end local v11    # "filter":Landroid/service/autofill/Dataset$DatasetFieldFilter;
    .end local v21    # "dataset":Landroid/service/autofill/Dataset;
    .end local v22    # "filterPattern":Ljava/util/regex/Pattern;
    .end local v23    # "filterable":Z
    .end local v24    # "valueText":Ljava/lang/String;
    .end local v25    # "view":Landroid/view/View;
    .end local v30    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    .end local v31    # "presentation":Landroid/widget/RemoteViews;
    .restart local v4    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    .local v9, "presentation":Landroid/widget/RemoteViews;
    .restart local v12    # "dataset":Landroid/service/autofill/Dataset;
    :catch_4
    move-exception v0

    move-object/from16 v30, v4

    move-object/from16 v31, v9

    move-object/from16 v21, v12

    const/4 v13, 0x1

    .end local v4    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    .end local v9    # "presentation":Landroid/widget/RemoteViews;
    .end local v12    # "dataset":Landroid/service/autofill/Dataset;
    .restart local v21    # "dataset":Landroid/service/autofill/Dataset;
    .restart local v30    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    .restart local v31    # "presentation":Landroid/widget/RemoteViews;
    goto :goto_12

    .end local v21    # "dataset":Landroid/service/autofill/Dataset;
    .end local v29    # "footerPresentation":Landroid/widget/RemoteViews;
    .end local v30    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    .end local v31    # "presentation":Landroid/widget/RemoteViews;
    .restart local v4    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    .restart local v9    # "presentation":Landroid/widget/RemoteViews;
    .restart local v12    # "dataset":Landroid/service/autofill/Dataset;
    .local v13, "footerPresentation":Landroid/widget/RemoteViews;
    :catch_5
    move-exception v0

    move-object/from16 v30, v4

    move-object/from16 v31, v9

    move-object/from16 v21, v12

    move-object/from16 v29, v13

    const/4 v13, 0x1

    .end local v4    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    .end local v9    # "presentation":Landroid/widget/RemoteViews;
    .end local v12    # "dataset":Landroid/service/autofill/Dataset;
    .end local v13    # "footerPresentation":Landroid/widget/RemoteViews;
    .restart local v21    # "dataset":Landroid/service/autofill/Dataset;
    .restart local v29    # "footerPresentation":Landroid/widget/RemoteViews;
    .restart local v30    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    .restart local v31    # "presentation":Landroid/widget/RemoteViews;
    :goto_12
    nop

    .line 347
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    goto :goto_13

    .line 333
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v21    # "dataset":Landroid/service/autofill/Dataset;
    .end local v27    # "interactionBlocker":Landroid/widget/RemoteViews$InteractionHandler;
    .end local v28    # "i":I
    .end local v29    # "footerPresentation":Landroid/widget/RemoteViews;
    .end local v30    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    .end local v31    # "presentation":Landroid/widget/RemoteViews;
    .restart local v4    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    .local v9, "interactionBlocker":Landroid/widget/RemoteViews$InteractionHandler;
    .local v11, "i":I
    .restart local v12    # "dataset":Landroid/service/autofill/Dataset;
    .restart local v13    # "footerPresentation":Landroid/widget/RemoteViews;
    :cond_20
    move-object/from16 v30, v4

    move-object/from16 v27, v9

    move/from16 v28, v11

    move-object/from16 v21, v12

    move-object/from16 v29, v13

    const/4 v13, 0x1

    .line 330
    .end local v4    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    .end local v7    # "index":I
    .end local v9    # "interactionBlocker":Landroid/widget/RemoteViews$InteractionHandler;
    .end local v11    # "i":I
    .end local v12    # "dataset":Landroid/service/autofill/Dataset;
    .end local v13    # "footerPresentation":Landroid/widget/RemoteViews;
    .restart local v27    # "interactionBlocker":Landroid/widget/RemoteViews$InteractionHandler;
    .restart local v28    # "i":I
    .restart local v29    # "footerPresentation":Landroid/widget/RemoteViews;
    .restart local v30    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    :goto_13
    add-int/lit8 v11, v28, 0x1

    move/from16 v7, v26

    move-object/from16 v9, v27

    move-object/from16 v13, v29

    move-object/from16 v4, v30

    .end local v28    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_d

    .end local v26    # "datasetCount":I
    .end local v27    # "interactionBlocker":Landroid/widget/RemoteViews$InteractionHandler;
    .end local v29    # "footerPresentation":Landroid/widget/RemoteViews;
    .end local v30    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    .restart local v4    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    .local v7, "datasetCount":I
    .restart local v9    # "interactionBlocker":Landroid/widget/RemoteViews$InteractionHandler;
    .restart local v13    # "footerPresentation":Landroid/widget/RemoteViews;
    :cond_21
    move-object/from16 v30, v4

    move/from16 v26, v7

    move-object/from16 v27, v9

    move/from16 v28, v11

    move-object/from16 v29, v13

    .line 392
    .end local v4    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    .end local v7    # "datasetCount":I
    .end local v9    # "interactionBlocker":Landroid/widget/RemoteViews$InteractionHandler;
    .end local v11    # "i":I
    .end local v13    # "footerPresentation":Landroid/widget/RemoteViews;
    .restart local v26    # "datasetCount":I
    .restart local v27    # "interactionBlocker":Landroid/widget/RemoteViews$InteractionHandler;
    .restart local v29    # "footerPresentation":Landroid/widget/RemoteViews;
    .restart local v30    # "interceptionHandler":Landroid/widget/RemoteViews$InteractionHandler;
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-direct {v0, v1, v10}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;-><init>(Lcom/android/server/autofill/ui/FillUi;Ljava/util/List;)V

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    .line 394
    const v0, 0x102022b

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    .line 395
    iget-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    iget-object v4, v1, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 396
    iget-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setVisibility(I)V

    .line 397
    iget-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    new-instance v4, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda7;

    invoke-direct {v4, v1}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 402
    if-nez p4, :cond_22

    .line 403
    const/4 v12, 0x0

    iput-object v12, v1, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    goto :goto_14

    .line 405
    :cond_22
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    .line 408
    :goto_14
    invoke-direct {v1}, Lcom/android/server/autofill/ui/FillUi;->applyNewFilterText()V

    .line 409
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-direct {v0, v1, v14, v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;-><init>(Lcom/android/server/autofill/ui/FillUi;Landroid/view/View;Lcom/android/server/autofill/ui/OverlayControl;)V

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    .line 411
    .end local v10    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/autofill/ui/FillUi$ViewItem;>;"
    .end local v26    # "datasetCount":I
    .end local v27    # "interactionBlocker":Landroid/widget/RemoteViews$InteractionHandler;
    :goto_15
    return-void
.end method

.method private announceSearchResultIfNeeded()V
    .locals 2

    .line 875
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 876
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    if-nez v0, :cond_0

    .line 877
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;-><init>(Lcom/android/server/autofill/ui/FillUi;Lcom/android/server/autofill/ui/FillUi-IA;)V

    iput-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    .line 879
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;->post()V

    .line 881
    :cond_1
    return-void
.end method

.method private applyCancelAction(Landroid/view/View;[I)V
    .locals 7
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "ids"    # [I

    .line 414
    if-nez p2, :cond_0

    .line 415
    return-void

    .line 418
    :cond_0
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    const-string v1, "FillUi"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fill UI has "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " actions"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot apply actions because fill UI root is not a ViewGroup: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return-void

    .line 426
    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 427
    .local v0, "root":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_4

    .line 428
    aget v3, p2, v2

    .line 429
    .local v3, "id":I
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 430
    .local v4, "child":Landroid/view/View;
    if-nez v4, :cond_3

    .line 431
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring cancel action for view "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " because it\'s not on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    goto :goto_1

    .line 435
    :cond_3
    new-instance v5, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    .end local v3    # "id":I
    .end local v4    # "child":Landroid/view/View;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    nop

    .line 442
    .end local v2    # "i":I
    return-void
.end method

.method private applyNewFilterText()V
    .locals 4

    .line 459
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v0

    .line 460
    .local v0, "oldCount":I
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    new-instance v3, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/autofill/ui/FillUi;I)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 489
    return-void
.end method

.method private heightLesserThanDisplayScreen(I)Z
    .locals 6
    .param p1, "height"    # I

    .line 601
    int-to-double v0, p1

    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFullScreen(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 142
    sget-object v0, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 143
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forcing full-screen mode to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FillUi"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    sget-object v0, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 146
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$applyCancelAction$5(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 436
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Cancelling session after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " clicked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FillUi"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/FillUi$Callback;->cancelSession()V

    .line 440
    return-void
.end method

.method private synthetic lambda$applyNewFilterText$7(II)V
    .locals 4
    .param p1, "oldCount"    # I
    .param p2, "count"    # I

    .line 461
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 462
    return-void

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 465
    .local v0, "size":I
    :goto_0
    const-string v1, "FillUi"

    if-gtz p2, :cond_3

    .line 466
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_2

    .line 467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No dataset matches filter with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " chars"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_2
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v1}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestHideFillUi()V

    goto :goto_1

    .line 470
    :cond_3
    iget v2, p0, Lcom/android/server/autofill/ui/FillUi;->mMaxInputLengthForAutofill:I

    if-le v0, v2, :cond_5

    .line 472
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_4

    .line 473
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not showing fill UI because user entered more than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/ui/FillUi;->mMaxInputLengthForAutofill:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " characters"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_4
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v1}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestHideFillUi()V

    goto :goto_1

    .line 478
    :cond_5
    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi;->updateContentSize()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 479
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/FillUi;->requestShowFillUi()V

    .line 481
    :cond_6
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 482
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->onVisibilityAggregated(Z)V

    .line 484
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v1

    if-eq v1, p1, :cond_7

    .line 485
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->requestLayout()V

    .line 488
    :cond_7
    :goto_1
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 209
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 220
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0, p2}, Lcom/android/server/autofill/ui/FillUi$Callback;->dispatchUnhandledKey(Landroid/view/KeyEvent;)V

    .line 221
    const/4 v0, 0x1

    return v0

    .line 218
    :sswitch_0
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
        0x6f -> :sswitch_0
    .end sparse-switch
.end method

.method private synthetic lambda$new$1(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "r"    # Landroid/widget/RemoteViews$RemoteResponse;

    .line 236
    if-eqz p2, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/autofill/ui/FillUi$Callback;->startIntentSender(Landroid/content/IntentSender;)V

    .line 239
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private synthetic lambda$new$2(Landroid/service/autofill/FillResponse;Landroid/view/View;)V
    .locals 1
    .param p1, "response"    # Landroid/service/autofill/FillResponse;
    .param p2, "v"    # Landroid/view/View;

    .line 265
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0, p1}, Lcom/android/server/autofill/ui/FillUi$Callback;->onResponsePicked(Landroid/service/autofill/FillResponse;)V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/service/autofill/Dataset;Landroid/view/View;)V
    .locals 1
    .param p1, "dataset"    # Landroid/service/autofill/Dataset;
    .param p2, "v"    # Landroid/view/View;

    .line 384
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0, p1}, Lcom/android/server/autofill/ui/FillUi$Callback;->onDatasetPicked(Landroid/service/autofill/Dataset;)V

    return-void
.end method

.method private synthetic lambda$new$4(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 398
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v0, p3}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getItem(I)Lcom/android/server/autofill/ui/FillUi$ViewItem;

    move-result-object v0

    .line 399
    .local v0, "vi":Lcom/android/server/autofill/ui/FillUi$ViewItem;
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    iget-object v2, v0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->dataset:Landroid/service/autofill/Dataset;

    invoke-interface {v1, v2}, Lcom/android/server/autofill/ui/FillUi$Callback;->onDatasetPicked(Landroid/service/autofill/Dataset;)V

    .line 400
    return-void
.end method

.method private static synthetic lambda$newInteractionBlocker$6(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "response"    # Landroid/widget/RemoteViews$RemoteResponse;

    .line 453
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring click on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FillUi"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private newInteractionBlocker()Landroid/widget/RemoteViews$InteractionHandler;
    .locals 1

    .line 452
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method private static resolveMaxWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "outPoint"    # Landroid/graphics/Point;

    .line 622
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 623
    sget-object v0, Lcom/android/server/autofill/ui/FillUi;->sTempTypedValue:Landroid/util/TypedValue;

    .line 624
    .local v0, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1120016

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 626
    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 627
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1120015

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 629
    iget v1, p1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 630
    return-void
.end method

.method private throwIfDestroyed()V
    .locals 2

    .line 616
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 619
    return-void

    .line 617
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot interact with a destroyed instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateContentSize()Z
    .locals 8

    .line 531
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 532
    return v1

    .line 534
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    if-eqz v0, :cond_1

    .line 536
    const/4 v0, 0x1

    return v0

    .line 538
    :cond_1
    const/4 v0, 0x0

    .line 539
    .local v0, "changed":Z
    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v2}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v2

    if-gtz v2, :cond_4

    .line 540
    iget v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    if-eqz v2, :cond_2

    .line 541
    iput v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 542
    const/4 v0, 0x1

    .line 544
    :cond_2
    iget v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    if-eqz v2, :cond_3

    .line 545
    iput v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    .line 546
    const/4 v0, 0x1

    .line 548
    :cond_3
    return v0

    .line 551
    :cond_4
    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi;->mTempPoint:Landroid/graphics/Point;

    .line 552
    .local v2, "maxSize":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/android/server/autofill/ui/FillUi;->resolveMaxWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 554
    iput v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 555
    iput v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    .line 557
    iget v1, v2, Landroid/graphics/Point;->x:I

    const/high16 v3, -0x80000000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 559
    .local v1, "widthMeasureSpec":I
    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 561
    .local v3, "heightMeasureSpec":I
    iget-object v4, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v4}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v4

    .line 563
    .local v4, "itemCount":I
    iget-object v5, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    if-eqz v5, :cond_5

    .line 564
    iget-object v5, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    invoke-virtual {v5, v1, v3}, Landroid/view/View;->measure(II)V

    .line 565
    iget-object v5, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    invoke-direct {p0, v5, v2}, Lcom/android/server/autofill/ui/FillUi;->updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 566
    iget-object v5, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    invoke-direct {p0, v5, v2}, Lcom/android/server/autofill/ui/FillUi;->updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 569
    :cond_5
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_7

    .line 570
    iget-object v6, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v6, v5}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getItem(I)Lcom/android/server/autofill/ui/FillUi$ViewItem;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/autofill/ui/FillUi$ViewItem;->view:Landroid/view/View;

    .line 571
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6, v1, v3}, Landroid/view/View;->measure(II)V

    .line 572
    invoke-direct {p0, v6, v2}, Lcom/android/server/autofill/ui/FillUi;->updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v7

    or-int/2addr v0, v7

    .line 573
    iget v7, p0, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    if-ge v5, v7, :cond_6

    .line 574
    invoke-direct {p0, v6, v2}, Lcom/android/server/autofill/ui/FillUi;->updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v7

    or-int/2addr v0, v7

    .line 569
    .end local v6    # "view":Landroid/view/View;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    nop

    .line 578
    .end local v5    # "i":I
    iget-object v5, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    if-eqz v5, :cond_8

    .line 579
    iget-object v5, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    invoke-virtual {v5, v1, v3}, Landroid/view/View;->measure(II)V

    .line 580
    iget-object v5, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    invoke-direct {p0, v5, v2}, Lcom/android/server/autofill/ui/FillUi;->updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 581
    iget-object v5, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    invoke-direct {p0, v5, v2}, Lcom/android/server/autofill/ui/FillUi;->updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 583
    :cond_8
    return v0
.end method

.method private updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "maxSize"    # Landroid/graphics/Point;

    .line 605
    const/4 v0, 0x0

    .line 606
    .local v0, "changed":Z
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, p2, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 607
    .local v1, "clampedMeasuredHeight":I
    iget v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    add-int/2addr v2, v1

    .line 608
    .local v2, "newContentHeight":I
    iget v3, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    if-eq v2, v3, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/autofill/ui/FillUi;->heightLesserThanDisplayScreen(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 609
    iput v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    .line 610
    const/4 v0, 0x1

    .line 612
    :cond_0
    return v0
.end method

.method private updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "maxSize"    # Landroid/graphics/Point;

    .line 587
    const/4 v0, 0x0

    .line 588
    .local v0, "changed":Z
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p2, Landroid/graphics/Point;->x:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 589
    .local v1, "clampedMeasuredWidth":I
    iget v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 590
    .local v2, "newContentWidth":I
    iget v3, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    if-eq v2, v3, :cond_0

    .line 591
    iput v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 592
    const/4 v0, 0x1

    .line 594
    :cond_0
    return v0
.end method


# virtual methods
.method public destroy(Z)V
    .locals 2
    .param p1, "notifyClient"    # Z

    .line 519
    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi;->throwIfDestroyed()V

    .line 520
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->hide(Z)V

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/FillUi$Callback;->onDestroy()V

    .line 524
    if-eqz p1, :cond_1

    .line 525
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestHideFillUiWhenDestroyed()V

    .line 527
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    .line 528
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 818
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCallback: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 819
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFullScreen: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 820
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mVisibleDatasetsMaxCount: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 822
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 823
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHeader: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 825
    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 826
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mListView: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 828
    :cond_2
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 829
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFooter: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 831
    :cond_3
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    if-eqz v0, :cond_4

    .line 832
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAdapter: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 834
    :cond_4
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 835
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFilterText: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 836
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/autofill/Helper;->printlnRedactedText(Ljava/io/PrintWriter;Ljava/lang/CharSequence;)V

    .line 838
    :cond_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mContentWidth: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 839
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mContentHeight: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 840
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDestroyed: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 841
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mContext: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 842
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUserContext: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mUserContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 843
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "theme id: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 844
    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I

    sparse-switch v0, :sswitch_data_0

    .line 852
    const-string v0, "(UNKNOWN_MODE)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 849
    :sswitch_0
    const-string v0, " (light)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 850
    goto :goto_1

    .line 846
    :sswitch_1
    const-string v0, " (dark)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 847
    nop

    .line 855
    :goto_1
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    if-eqz v0, :cond_8

    .line 856
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWindow: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 858
    .local v0, "prefix2":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 859
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "showing: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->-$$Nest$fgetmShowing(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 860
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "view: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->-$$Nest$fgetmContentView(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 861
    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->-$$Nest$fgetmShowParams(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 862
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "params: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->-$$Nest$fgetmShowParams(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 864
    :cond_6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "screen coordinates: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 865
    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->-$$Nest$fgetmContentView(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_7

    .line 866
    const-string v1, "N/A"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 868
    :cond_7
    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->-$$Nest$fgetmContentView(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v3

    .line 869
    .local v3, "coordinates":[I
    aget v1, v3, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v1, "x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v1, v3, v2

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 872
    .end local v0    # "prefix2":Ljava/lang/String;
    .end local v3    # "coordinates":[I
    :cond_8
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x10303ff -> :sswitch_1
        0x103040c -> :sswitch_0
    .end sparse-switch
.end method

.method requestShowFillUi()V
    .locals 4

    .line 445
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    iget v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    iget v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindowPresenter:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestShowFillUi(IILandroid/view/autofill/IAutofillWindowPresenter;)V

    .line 446
    return-void
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 1
    .param p1, "filterText"    # Ljava/lang/String;

    .line 492
    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi;->throwIfDestroyed()V

    .line 493
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    if-nez v0, :cond_1

    .line 496
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/FillUi;->requestShowFillUi()V

    goto :goto_0

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestHideFillUi()V

    .line 501
    :goto_0
    return-void

    .line 504
    :cond_1
    if-nez p1, :cond_2

    .line 505
    const/4 p1, 0x0

    goto :goto_1

    .line 507
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 510
    :goto_1
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 511
    return-void

    .line 513
    :cond_3
    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    .line 515
    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi;->applyNewFilterText()V

    .line 516
    return-void
.end method
