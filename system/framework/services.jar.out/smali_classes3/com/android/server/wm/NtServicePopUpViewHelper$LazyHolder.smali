.class Lcom/android/server/wm/NtServicePopUpViewHelper$LazyHolder;
.super Ljava/lang/Object;
.source "NtServicePopUpViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/NtServicePopUpViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/server/wm/NtServicePopUpViewHelper;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/wm/NtServicePopUpViewHelper;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/wm/NtServicePopUpViewHelper$LazyHolder;->INSTANCE:Lcom/android/server/wm/NtServicePopUpViewHelper;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/android/server/wm/NtServicePopUpViewHelper;

    invoke-direct {v0}, Lcom/android/server/wm/NtServicePopUpViewHelper;-><init>()V

    sput-object v0, Lcom/android/server/wm/NtServicePopUpViewHelper$LazyHolder;->INSTANCE:Lcom/android/server/wm/NtServicePopUpViewHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
