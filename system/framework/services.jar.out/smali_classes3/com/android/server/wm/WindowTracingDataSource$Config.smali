.class public Lcom/android/server/wm/WindowTracingDataSource$Config;
.super Ljava/lang/Object;
.source "WindowTracingDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowTracingDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field public final mLogFrequency:I

.field public final mLogLevel:I


# direct methods
.method private constructor <init>(II)V
    .locals 0
    .param p1, "logLevel"    # I
    .param p2, "logFrequency"    # I

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/android/server/wm/WindowTracingDataSource$Config;->mLogLevel:I

    .line 58
    iput p2, p0, Lcom/android/server/wm/WindowTracingDataSource$Config;->mLogFrequency:I

    .line 59
    return-void
.end method

.method synthetic constructor <init>(IILcom/android/server/wm/WindowTracingDataSource-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowTracingDataSource$Config;-><init>(II)V

    return-void
.end method
