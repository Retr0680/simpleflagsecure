.class public abstract Lcom/android/server/wm/WindowTracingDataSource$Instance;
.super Landroid/tracing/perfetto/DataSourceInstance;
.source "WindowTracingDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowTracingDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Instance"
.end annotation


# instance fields
.field public final mConfig:Lcom/android/server/wm/WindowTracingDataSource$Config;


# direct methods
.method public constructor <init>(Landroid/tracing/perfetto/DataSource;ILcom/android/server/wm/WindowTracingDataSource$Config;)V
    .locals 0
    .param p1, "dataSource"    # Landroid/tracing/perfetto/DataSource;
    .param p2, "instanceIndex"    # I
    .param p3, "config"    # Lcom/android/server/wm/WindowTracingDataSource$Config;

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/tracing/perfetto/DataSourceInstance;-><init>(Landroid/tracing/perfetto/DataSource;I)V

    .line 67
    iput-object p3, p0, Lcom/android/server/wm/WindowTracingDataSource$Instance;->mConfig:Lcom/android/server/wm/WindowTracingDataSource$Config;

    .line 68
    return-void
.end method
