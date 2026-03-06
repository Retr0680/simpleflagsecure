.class public final Lcom/android/server/SystemConfig$SharedLibraryEntry;
.super Ljava/lang/Object;
.source "SystemConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SystemConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SharedLibraryEntry"
.end annotation


# instance fields
.field public final canBeSafelyIgnored:Z

.field public final dependencies:[Ljava/lang/String;

.field public final filename:Ljava/lang/String;

.field public final isNative:Z

.field public final name:Ljava/lang/String;

.field public final onBootclasspathBefore:Ljava/lang/String;

.field public final onBootclasspathSince:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "dependencies"    # [Ljava/lang/String;
    .param p4, "onBootclasspathSince"    # Ljava/lang/String;
    .param p5, "onBootclasspathBefore"    # Ljava/lang/String;

    .line 200
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "filename":Ljava/lang/String;
    .end local p3    # "dependencies":[Ljava/lang/String;
    .end local p4    # "onBootclasspathSince":Ljava/lang/String;
    .end local p5    # "onBootclasspathBefore":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .local v2, "filename":Ljava/lang/String;
    .local v3, "dependencies":[Ljava/lang/String;
    .local v4, "onBootclasspathSince":Ljava/lang/String;
    .local v5, "onBootclasspathBefore":Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Lcom/android/server/SystemConfig$SharedLibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 202
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "dependencies"    # [Ljava/lang/String;
    .param p4, "onBootclasspathSince"    # Ljava/lang/String;
    .param p5, "onBootclasspathBefore"    # Ljava/lang/String;
    .param p6, "isNative"    # Z

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p1, p0, Lcom/android/server/SystemConfig$SharedLibraryEntry;->name:Ljava/lang/String;

    .line 207
    iput-object p2, p0, Lcom/android/server/SystemConfig$SharedLibraryEntry;->filename:Ljava/lang/String;

    .line 208
    iput-object p3, p0, Lcom/android/server/SystemConfig$SharedLibraryEntry;->dependencies:[Ljava/lang/String;

    .line 209
    iput-object p4, p0, Lcom/android/server/SystemConfig$SharedLibraryEntry;->onBootclasspathSince:Ljava/lang/String;

    .line 210
    iput-object p5, p0, Lcom/android/server/SystemConfig$SharedLibraryEntry;->onBootclasspathBefore:Ljava/lang/String;

    .line 211
    iput-boolean p6, p0, Lcom/android/server/SystemConfig$SharedLibraryEntry;->isNative:Z

    .line 216
    iget-object v0, p0, Lcom/android/server/SystemConfig$SharedLibraryEntry;->onBootclasspathSince:Ljava/lang/String;

    nop

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/SystemConfig$SharedLibraryEntry;->onBootclasspathSince:Ljava/lang/String;

    .line 218
    invoke-static {v0}, Lcom/android/server/SystemConfig;->-$$Nest$smisAtLeastSdkLevel(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/SystemConfig$SharedLibraryEntry;->onBootclasspathBefore:Ljava/lang/String;

    nop

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/SystemConfig$SharedLibraryEntry;->onBootclasspathBefore:Ljava/lang/String;

    .line 220
    invoke-static {v0}, Lcom/android/server/SystemConfig;->-$$Nest$smisAtLeastSdkLevel(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/SystemConfig$SharedLibraryEntry;->canBeSafelyIgnored:Z

    .line 221
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "dependencies"    # [Ljava/lang/String;
    .param p4, "isNative"    # Z

    .line 193
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "filename":Ljava/lang/String;
    .end local p3    # "dependencies":[Ljava/lang/String;
    .end local p4    # "isNative":Z
    .local v1, "name":Ljava/lang/String;
    .local v2, "filename":Ljava/lang/String;
    .local v3, "dependencies":[Ljava/lang/String;
    .local v6, "isNative":Z
    invoke-direct/range {v0 .. v6}, Lcom/android/server/SystemConfig$SharedLibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 195
    return-void
.end method
