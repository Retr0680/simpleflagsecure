.class Lcom/android/server/wm/NtStartingWindowHelper$LazyHolder;
.super Ljava/lang/Object;
.source "NtStartingWindowHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/NtStartingWindowHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/server/wm/NtStartingWindowHelper;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/wm/NtStartingWindowHelper;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/wm/NtStartingWindowHelper$LazyHolder;->INSTANCE:Lcom/android/server/wm/NtStartingWindowHelper;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/android/server/wm/NtStartingWindowHelper;

    invoke-direct {v0}, Lcom/android/server/wm/NtStartingWindowHelper;-><init>()V

    sput-object v0, Lcom/android/server/wm/NtStartingWindowHelper$LazyHolder;->INSTANCE:Lcom/android/server/wm/NtStartingWindowHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
