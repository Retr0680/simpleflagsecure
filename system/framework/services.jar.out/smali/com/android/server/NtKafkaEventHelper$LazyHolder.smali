.class Lcom/android/server/NtKafkaEventHelper$LazyHolder;
.super Ljava/lang/Object;
.source "NtKafkaEventHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NtKafkaEventHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/server/NtKafkaEventHelper;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/NtKafkaEventHelper;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/NtKafkaEventHelper$LazyHolder;->INSTANCE:Lcom/android/server/NtKafkaEventHelper;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/android/server/NtKafkaEventHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/NtKafkaEventHelper;-><init>(Lcom/android/server/NtKafkaEventHelper-IA;)V

    sput-object v0, Lcom/android/server/NtKafkaEventHelper$LazyHolder;->INSTANCE:Lcom/android/server/NtKafkaEventHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
