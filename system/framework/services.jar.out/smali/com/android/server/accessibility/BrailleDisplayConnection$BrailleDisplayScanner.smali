.class interface abstract Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;
.super Ljava/lang/Object;
.source "BrailleDisplayConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/BrailleDisplayConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "BrailleDisplayScanner"
.end annotation


# virtual methods
.method public abstract getDeviceBusType(Ljava/nio/file/Path;)I
.end method

.method public abstract getDeviceReportDescriptor(Ljava/nio/file/Path;)[B
.end method

.method public abstract getHidrawNodePaths(Ljava/nio/file/Path;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getName(Ljava/nio/file/Path;)Ljava/lang/String;
.end method

.method public abstract getUniqueId(Ljava/nio/file/Path;)Ljava/lang/String;
.end method
