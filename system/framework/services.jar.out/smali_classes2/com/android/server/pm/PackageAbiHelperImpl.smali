.class final Lcom/android/server/pm/PackageAbiHelperImpl;
.super Ljava/lang/Object;
.source "PackageAbiHelperImpl.java"

# interfaces
.implements Lcom/android/server/pm/PackageAbiHelper;


# static fields
.field private static sNativelySupported32BitAbis:[Ljava/lang/String;

.field private static sNativelySupported64BitAbis:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/PackageAbiHelperImpl;->sNativelySupported32BitAbis:[Ljava/lang/String;

    .line 65
    sput-object v0, Lcom/android/server/pm/PackageAbiHelperImpl;->sNativelySupported64BitAbis:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateBundledApkRoot(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "codePathString"    # Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, "codePath":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    .local v1, "codeRoot":Ljava/io/File;
    goto/16 :goto_2

    .line 72
    .end local v1    # "codeRoot":Ljava/io/File;
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v1

    .restart local v1    # "codeRoot":Ljava/io/File;
    goto/16 :goto_2

    .line 74
    .end local v1    # "codeRoot":Ljava/io/File;
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v1

    .restart local v1    # "codeRoot":Ljava/io/File;
    goto/16 :goto_2

    .line 76
    .end local v1    # "codeRoot":Ljava/io/File;
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 77
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v1

    .restart local v1    # "codeRoot":Ljava/io/File;
    goto/16 :goto_2

    .line 78
    .end local v1    # "codeRoot":Ljava/io/File;
    :cond_3
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 79
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v1

    .restart local v1    # "codeRoot":Ljava/io/File;
    goto/16 :goto_2

    .line 80
    .end local v1    # "codeRoot":Ljava/io/File;
    :cond_4
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 81
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object v1

    .restart local v1    # "codeRoot":Ljava/io/File;
    goto/16 :goto_2

    .line 82
    .end local v1    # "codeRoot":Ljava/io/File;
    :cond_5
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 83
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v1

    .restart local v1    # "codeRoot":Ljava/io/File;
    goto/16 :goto_2

    .line 84
    .end local v1    # "codeRoot":Ljava/io/File;
    :cond_6
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    const-string v2, "Can\'t canonicalize code path "

    const-string v3, "PackageManager"

    if-eqz v1, :cond_8

    .line 85
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "fullPath":Ljava/lang/String;
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "parts":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x2

    if-le v5, v6, :cond_7

    .line 88
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v4, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .local v2, "codeRoot":Ljava/io/File;
    goto :goto_0

    .line 90
    .end local v2    # "codeRoot":Ljava/io/File;
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object v2

    move-object v1, v2

    .line 93
    .end local v4    # "parts":[Ljava/lang/String;
    .local v1, "codeRoot":Ljava/io/File;
    :goto_0
    goto :goto_2

    .line 97
    .end local v1    # "codeRoot":Ljava/io/File;
    :cond_8
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    .line 98
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 100
    .local v4, "parent":Ljava/io/File;
    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    move-object v6, v5

    .local v6, "tmp":Ljava/io/File;
    if-eqz v5, :cond_9

    .line 101
    move-object v1, v4

    .line 102
    move-object v4, v6

    goto :goto_1

    .line 104
    :cond_9
    move-object v5, v1

    .line 105
    .local v5, "codeRoot":Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized code path "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " - using "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    move-object v1, v5

    .line 113
    .end local v4    # "parent":Ljava/io/File;
    .end local v5    # "codeRoot":Ljava/io/File;
    .end local v6    # "tmp":Ljava/io/File;
    .local v1, "codeRoot":Ljava/io/File;
    :goto_2
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 107
    .end local v1    # "codeRoot":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "codePath"    # Ljava/lang/String;

    .line 120
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 121
    return-object v0

    .line 123
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v1, "codeFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    return-object v2

    .line 127
    :cond_1
    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    goto :goto_0

    .line 131
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Odd, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t look like an APK"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-object v0

    .line 128
    :goto_0
    const/16 v0, 0x2e

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 129
    .local v0, "lastDot":I
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static deriveNativeLibraryPaths(Lcom/android/server/pm/PackageAbiHelper$Abis;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .locals 10
    .param p0, "abis"    # Lcom/android/server/pm/PackageAbiHelper$Abis;
    .param p1, "appLib32InstallDir"    # Ljava/io/File;
    .param p2, "codePath"    # Ljava/lang/String;
    .param p3, "sourceDir"    # Ljava/lang/String;
    .param p4, "isSystemApp"    # Z
    .param p5, "isUpdatedSystemApp"    # Z

    .line 166
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, "codeFile":Ljava/io/File;
    if-eqz p4, :cond_0

    if-nez p5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 174
    .local v1, "bundledApp":Z
    :goto_0
    invoke-static {v0}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkFile(Ljava/io/File;)Z

    move-result v2

    const-string/jumbo v3, "lib"

    if-eqz v2, :cond_5

    .line 176
    if-eqz v1, :cond_4

    .line 179
    invoke-static {p3}, Lcom/android/server/pm/PackageAbiHelperImpl;->calculateBundledApkRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "apkRoot":Ljava/lang/String;
    nop

    .line 181
    invoke-static {p0}, Lcom/android/server/pm/InstructionSets;->getPrimaryInstructionSet(Lcom/android/server/pm/PackageAbiHelper$Abis;)Ljava/lang/String;

    move-result-object v4

    .line 180
    invoke-static {v4}, Ldalvik/system/VMRuntime;->is64BitInstructionSet(Ljava/lang/String;)Z

    move-result v4

    .line 186
    .local v4, "is64Bit":Z
    invoke-static {p2}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 187
    .local v5, "apkName":Ljava/lang/String;
    const-string/jumbo v6, "lib64"

    if-eqz v4, :cond_1

    move-object v7, v6

    goto :goto_1

    :cond_1
    move-object v7, v3

    .line 188
    .local v7, "libDir":Ljava/lang/String;
    :goto_1
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    filled-new-array {v7, v5}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 189
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 191
    .local v8, "nativeLibraryRootDir":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 192
    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move-object v3, v6

    .line 193
    .local v3, "secondaryLibDir":Ljava/lang/String;
    :goto_2
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 194
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "secondaryNativeLibraryDir":Ljava/lang/String;
    goto :goto_3

    .line 196
    .end local v3    # "secondaryNativeLibraryDir":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    .line 198
    .end local v2    # "apkRoot":Ljava/lang/String;
    .end local v4    # "is64Bit":Z
    .end local v5    # "apkName":Ljava/lang/String;
    .end local v7    # "libDir":Ljava/lang/String;
    .restart local v3    # "secondaryNativeLibraryDir":Ljava/lang/String;
    :goto_3
    goto :goto_4

    .line 199
    .end local v3    # "secondaryNativeLibraryDir":Ljava/lang/String;
    .end local v8    # "nativeLibraryRootDir":Ljava/lang/String;
    :cond_4
    invoke-static {p2}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "apkName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 202
    .restart local v8    # "nativeLibraryRootDir":Ljava/lang/String;
    const/4 v3, 0x0

    .line 205
    .end local v2    # "apkName":Ljava/lang/String;
    .restart local v3    # "secondaryNativeLibraryDir":Ljava/lang/String;
    :goto_4
    const/4 v2, 0x0

    .line 206
    .local v2, "nativeLibraryRootRequiresIsa":Z
    move-object v4, v8

    .local v4, "nativeLibraryDir":Ljava/lang/String;
    goto :goto_5

    .line 209
    .end local v2    # "nativeLibraryRootRequiresIsa":Z
    .end local v3    # "secondaryNativeLibraryDir":Ljava/lang/String;
    .end local v4    # "nativeLibraryDir":Ljava/lang/String;
    .end local v8    # "nativeLibraryRootDir":Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 210
    .restart local v8    # "nativeLibraryRootDir":Ljava/lang/String;
    const/4 v2, 0x1

    .line 212
    .restart local v2    # "nativeLibraryRootRequiresIsa":Z
    new-instance v3, Ljava/io/File;

    .line 213
    invoke-static {p0}, Lcom/android/server/pm/InstructionSets;->getPrimaryInstructionSet(Lcom/android/server/pm/PackageAbiHelper$Abis;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 215
    .restart local v4    # "nativeLibraryDir":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 216
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    .line 217
    invoke-static {v5}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "secondaryNativeLibraryDir":Ljava/lang/String;
    goto :goto_5

    .line 219
    .end local v3    # "secondaryNativeLibraryDir":Ljava/lang/String;
    :cond_6
    const/4 v3, 0x0

    .line 222
    .restart local v3    # "secondaryNativeLibraryDir":Ljava/lang/String;
    :goto_5
    new-instance v5, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    invoke-direct {v5, v8, v2, v4, v3}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method

.method private getBundledAppAbi(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageAbiHelper$Abis;
    .locals 7
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "apkRoot"    # Ljava/lang/String;
    .param p3, "apkName"    # Ljava/lang/String;

    .line 246
    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    .local v0, "codeFile":Ljava/io/File;
    invoke-static {v0}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkFile(Ljava/io/File;)Z

    move-result v1

    const-string/jumbo v2, "lib"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 255
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "lib64"

    invoke-direct {v4, v5, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    .line 257
    .local v1, "has64BitLibs":Z
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    .local v2, "has32BitLibs":Z
    goto :goto_1

    .line 260
    .end local v1    # "has64BitLibs":Z
    .end local v2    # "has32BitLibs":Z
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 261
    .local v1, "rootDir":Ljava/io/File;
    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    nop

    if-nez v2, :cond_1

    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v2, v2, v3

    .line 262
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 263
    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-static {v2}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, "isa":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    .line 265
    .local v2, "has64BitLibs":Z
    goto :goto_0

    .line 266
    .end local v2    # "has64BitLibs":Z
    :cond_1
    const/4 v2, 0x0

    .line 268
    .restart local v2    # "has64BitLibs":Z
    :goto_0
    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    nop

    if-nez v4, :cond_2

    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 269
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 270
    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v4}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 271
    .local v4, "isa":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    .line 272
    .local v4, "has32BitLibs":Z
    move v1, v2

    move v2, v4

    goto :goto_1

    .line 273
    .end local v4    # "has32BitLibs":Z
    :cond_2
    const/4 v4, 0x0

    move v1, v2

    move v2, v4

    .line 277
    .local v1, "has64BitLibs":Z
    .local v2, "has32BitLibs":Z
    :goto_1
    if-eqz v1, :cond_3

    if-nez v2, :cond_3

    .line 282
    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v3, v4, v3

    .line 283
    .local v3, "primaryCpuAbi":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "secondaryCpuAbi":Ljava/lang/String;
    goto :goto_2

    .line 284
    .end local v3    # "primaryCpuAbi":Ljava/lang/String;
    .end local v4    # "secondaryCpuAbi":Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_4

    if-nez v1, :cond_4

    .line 288
    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v3, v4, v3

    .line 289
    .restart local v3    # "primaryCpuAbi":Ljava/lang/String;
    const/4 v4, 0x0

    .restart local v4    # "secondaryCpuAbi":Ljava/lang/String;
    goto :goto_2

    .line 290
    .end local v3    # "primaryCpuAbi":Ljava/lang/String;
    .end local v4    # "secondaryCpuAbi":Ljava/lang/String;
    :cond_4
    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    .line 298
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isMultiArch()Z

    move-result v4

    if-nez v4, :cond_5

    .line 299
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " has multiple bundled libs, but is not multiarch."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_5
    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getPreferredInstructionSet()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldalvik/system/VMRuntime;->is64BitInstructionSet(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 304
    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 305
    .local v4, "primaryCpuAbi":Ljava/lang/String;
    sget-object v5, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v3, v5, v3

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    .local v3, "secondaryCpuAbi":Ljava/lang/String;
    goto :goto_2

    .line 307
    .end local v3    # "secondaryCpuAbi":Ljava/lang/String;
    .end local v4    # "primaryCpuAbi":Ljava/lang/String;
    :cond_6
    sget-object v4, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 308
    .restart local v4    # "primaryCpuAbi":Ljava/lang/String;
    sget-object v5, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v3, v5, v3

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    .restart local v3    # "secondaryCpuAbi":Ljava/lang/String;
    goto :goto_2

    .line 311
    .end local v3    # "secondaryCpuAbi":Ljava/lang/String;
    .end local v4    # "primaryCpuAbi":Ljava/lang/String;
    :cond_7
    const/4 v3, 0x0

    .line 312
    .local v3, "primaryCpuAbi":Ljava/lang/String;
    const/4 v4, 0x0

    .line 314
    .local v4, "secondaryCpuAbi":Ljava/lang/String;
    :goto_2
    new-instance v5, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-direct {v5, v3, v4}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method

.method private static getNativelySupported32BitAbis()[Ljava/lang/String;
    .locals 1

    .line 332
    sget-object v0, Lcom/android/server/pm/PackageAbiHelperImpl;->sNativelySupported32BitAbis:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 333
    sget-object v0, Lcom/android/server/pm/PackageAbiHelperImpl;->sNativelySupported32BitAbis:[Ljava/lang/String;

    return-object v0

    .line 336
    :cond_0
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/pm/PackageAbiHelperImpl;->getNativelySupportedAbis([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PackageAbiHelperImpl;->sNativelySupported32BitAbis:[Ljava/lang/String;

    .line 337
    sget-object v0, Lcom/android/server/pm/PackageAbiHelperImpl;->sNativelySupported32BitAbis:[Ljava/lang/String;

    return-object v0
.end method

.method private static getNativelySupported64BitAbis()[Ljava/lang/String;
    .locals 1

    .line 341
    sget-object v0, Lcom/android/server/pm/PackageAbiHelperImpl;->sNativelySupported64BitAbis:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 342
    sget-object v0, Lcom/android/server/pm/PackageAbiHelperImpl;->sNativelySupported64BitAbis:[Ljava/lang/String;

    return-object v0

    .line 345
    :cond_0
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/pm/PackageAbiHelperImpl;->getNativelySupportedAbis([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PackageAbiHelperImpl;->sNativelySupported64BitAbis:[Ljava/lang/String;

    .line 346
    sget-object v0, Lcom/android/server/pm/PackageAbiHelperImpl;->sNativelySupported64BitAbis:[Ljava/lang/String;

    return-object v0
.end method

.method private static getNativelySupportedAbis([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "supportedAbis"    # [Ljava/lang/String;

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .local v0, "nativelySupportedAbis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 321
    aget-object v2, p0, v1

    .line 323
    .local v2, "currentAbi":Ljava/lang/String;
    invoke-static {v2}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 324
    .local v3, "currentIsa":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ro.dalvik.vm.isa."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 325
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    .end local v2    # "currentAbi":Ljava/lang/String;
    .end local v3    # "currentIsa":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 328
    .end local v1    # "i":I
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private static maybeThrowExceptionForMultiArchCopy(Ljava/lang/String;IZ)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "copyRet"    # I
    .param p2, "forceMatch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 138
    if-gez p1, :cond_4

    .line 139
    const/16 v0, -0x72

    const/16 v1, -0x71

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_1

    :cond_0
    goto :goto_0

    .line 141
    :cond_1
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v0, p1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 144
    :goto_0
    if-eqz p2, :cond_2

    if-eq p1, v1, :cond_3

    :cond_2
    goto :goto_1

    .line 145
    :cond_3
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v1, -0x83

    const-string v2, "The multiArch app\'s native libs don\'t support all the natively supported ABIs of the device."

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 151
    :cond_4
    :goto_1
    return-void
.end method

.method private shouldExtractLibs(Lcom/android/server/pm/pkg/AndroidPackage;ZZ)Z
    .locals 1
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "isSystemApp"    # Z
    .param p3, "isUpdatedSystemApp"    # Z

    .line 545
    invoke-static {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 546
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isExtractNativeLibrariesRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    .line 548
    .local v0, "extractLibs":Z
    if-eqz p2, :cond_1

    if-nez p3, :cond_1

    .line 549
    const/4 v0, 0x0

    .line 551
    :cond_1
    return v0
.end method


# virtual methods
.method public checkPackageAlignment(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;ZLjava/lang/String;)I
    .locals 4
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "libraryRoot"    # Ljava/lang/String;
    .param p3, "nativeLibraryRootRequiresIsa"    # Z
    .param p4, "abiOverride"    # Ljava/lang/String;

    .line 636
    const/4 v0, 0x0

    .line 638
    .local v0, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :try_start_0
    invoke-static {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->createNativeLibraryHandle(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v1

    move-object v0, v1

    .line 639
    invoke-static {v0, p2, p3, p4}, Lcom/android/internal/content/NativeLibraryHelper;->checkAlignmentForCompatMode(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;ZLjava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 641
    :catch_0
    move-exception v1

    .line 642
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to check alignment of package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 642
    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const/4 v2, -0x1

    return v2
.end method

.method public deriveNativeLibraryPaths(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/io/File;)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .locals 6
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "isSystemApp"    # Z
    .param p3, "isUpdatedSystemApp"    # Z
    .param p4, "appLib32InstallDir"    # Ljava/io/File;

    .line 158
    new-instance v0, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-static {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-static {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawSecondaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    .line 158
    move v4, p2

    move v5, p3

    move-object v1, p4

    .end local p2    # "isSystemApp":Z
    .end local p3    # "isUpdatedSystemApp":Z
    .end local p4    # "appLib32InstallDir":Ljava/io/File;
    .local v1, "appLib32InstallDir":Ljava/io/File;
    .local v4, "isSystemApp":Z
    .local v5, "isUpdatedSystemApp":Z
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveNativeLibraryPaths(Lcom/android/server/pm/PackageAbiHelper$Abis;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object p2

    return-object p2
.end method

.method public derivePackageAbi(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/lang/String;Ljava/io/File;)Landroid/util/Pair;
    .locals 27
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "isSystemApp"    # Z
    .param p3, "isUpdatedSystemApp"    # Z
    .param p4, "cpuAbiOverride"    # Ljava/lang/String;
    .param p5, "appLib32InstallDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/PackageAbiHelper$Abis;",
            "Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 356
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawSecondaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v2

    .line 358
    .local v2, "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    new-instance v3, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-direct {v3, v1, v2}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 361
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v6

    .line 358
    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v4, p5

    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveNativeLibraryPaths(Lcom/android/server/pm/PackageAbiHelper$Abis;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object v3

    .line 364
    .local v3, "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    invoke-direct/range {p0 .. p3}, Lcom/android/server/pm/PackageAbiHelperImpl;->shouldExtractLibs(Lcom/android/server/pm/pkg/AndroidPackage;ZZ)Z

    move-result v10

    .line 366
    .local v10, "extractLibs":Z
    iget-object v11, v3, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->nativeLibraryRootDir:Ljava/lang/String;

    .line 367
    .local v11, "nativeLibraryRootStr":Ljava/lang/String;
    iget-boolean v12, v3, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->nativeLibraryRootRequiresIsa:Z

    .line 368
    .local v12, "useIsaSpecificSubdirs":Z
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v13

    .line 370
    .local v13, "onIncremental":Z
    const/4 v4, 0x0

    .line 371
    .local v4, "primaryCpuAbi":Ljava/lang/String;
    const/4 v5, 0x0

    .line 373
    .local v5, "secondaryCpuAbi":Ljava/lang/String;
    const/4 v6, 0x0

    .line 375
    .local v6, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->createNativeLibraryHandle(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v0

    move-object v6, v0

    .line 382
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 385
    .local v0, "nativeLibraryRoot":Ljava/io/File;
    const/4 v4, 0x0

    .line 386
    const/4 v5, 0x0

    .line 387
    :try_start_1
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isMultiArch()Z

    move-result v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    const-string v8, "findSupportedAbi"

    const-string v9, "copyNativeBinaries"

    const/16 v16, 0x0

    if-eqz v7, :cond_13

    .line 391
    nop

    .line 392
    :try_start_2
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    const/16 v14, 0x23

    if-lt v7, v14, :cond_0

    if-nez p4, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    move/from16 v7, v16

    .line 395
    .local v7, "forceMatch":Z
    :goto_0
    if-eqz v7, :cond_1

    :try_start_3
    invoke-static {}, Lcom/android/server/pm/PackageAbiHelperImpl;->getNativelySupported32BitAbis()[Ljava/lang/String;

    move-result-object v14
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 529
    .end local v0    # "nativeLibraryRoot":Ljava/io/File;
    .end local v7    # "forceMatch":Z
    :catchall_0
    move-exception v0

    move-object/from16 v21, v1

    move-object/from16 v20, v2

    move-object/from16 v24, v3

    goto/16 :goto_17

    .line 526
    :catch_0
    move-exception v0

    move-object/from16 v21, v1

    move-object/from16 v20, v2

    move-object/from16 v24, v3

    goto/16 :goto_15

    .line 396
    .restart local v0    # "nativeLibraryRoot":Ljava/io/File;
    .restart local v7    # "forceMatch":Z
    :cond_1
    :try_start_4
    sget-object v14, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    :goto_1
    nop

    .line 397
    .local v14, "supported32BitAbis":[Ljava/lang/String;
    if-eqz v7, :cond_2

    :try_start_5
    invoke-static {}, Lcom/android/server/pm/PackageAbiHelperImpl;->getNativelySupported64BitAbis()[Ljava/lang/String;

    move-result-object v19
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 398
    :cond_2
    :try_start_6
    sget-object v19, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    :goto_2
    move-object/from16 v20, v19

    .line 400
    .local v20, "supported64BitAbis":[Ljava/lang/String;
    array-length v15, v14
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-lez v15, :cond_3

    const/4 v15, 0x1

    goto :goto_3

    :cond_3
    move/from16 v15, v16

    .line 401
    .local v15, "systemSupports32BitAbi":Z
    :goto_3
    move-object/from16 v21, v1

    move-object/from16 v1, v20

    move-object/from16 v20, v2

    .end local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .local v1, "supported64BitAbis":[Ljava/lang/String;
    .local v20, "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .local v21, "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    :try_start_7
    array-length v2, v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-lez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    move/from16 v2, v16

    .line 403
    .local v2, "systemSupports64BitAbi":Z
    :goto_4
    const/16 v22, -0x72

    .line 404
    .local v22, "abi32":I
    const/16 v23, -0x72

    .line 405
    .local v23, "abi64":I
    if-eqz v15, :cond_6

    .line 406
    if-eqz v10, :cond_5

    .line 407
    move/from16 v25, v2

    move-object/from16 v24, v3

    const-wide/32 v2, 0x40000

    .end local v2    # "systemSupports64BitAbi":Z
    .end local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .local v24, "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .local v25, "systemSupports64BitAbi":Z
    :try_start_8
    invoke-static {v2, v3, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 408
    invoke-static {v6, v0, v14, v12, v13}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    move-result v2

    move/from16 v22, v2

    const-wide/32 v2, 0x40000

    .end local v22    # "abi32":I
    .local v2, "abi32":I
    goto :goto_5

    .line 529
    .end local v0    # "nativeLibraryRoot":Ljava/io/File;
    .end local v1    # "supported64BitAbis":[Ljava/lang/String;
    .end local v2    # "abi32":I
    .end local v7    # "forceMatch":Z
    .end local v14    # "supported32BitAbis":[Ljava/lang/String;
    .end local v15    # "systemSupports32BitAbi":Z
    .end local v23    # "abi64":I
    .end local v25    # "systemSupports64BitAbi":Z
    :catchall_1
    move-exception v0

    goto/16 :goto_17

    .line 526
    :catch_1
    move-exception v0

    goto/16 :goto_15

    .line 412
    .end local v24    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v0    # "nativeLibraryRoot":Ljava/io/File;
    .restart local v1    # "supported64BitAbis":[Ljava/lang/String;
    .local v2, "systemSupports64BitAbi":Z
    .restart local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v7    # "forceMatch":Z
    .restart local v14    # "supported32BitAbis":[Ljava/lang/String;
    .restart local v15    # "systemSupports32BitAbi":Z
    .restart local v22    # "abi32":I
    .restart local v23    # "abi64":I
    :cond_5
    move/from16 v25, v2

    move-object/from16 v24, v3

    .end local v2    # "systemSupports64BitAbi":Z
    .end local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v24    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v25    # "systemSupports64BitAbi":Z
    const-wide/32 v2, 0x40000

    invoke-static {v2, v3, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 413
    invoke-static {v6, v14}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v17

    .end local v22    # "abi32":I
    .local v17, "abi32":I
    move/from16 v22, v17

    .line 416
    .end local v17    # "abi32":I
    .restart local v22    # "abi32":I
    :goto_5
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move/from16 v2, v22

    goto :goto_6

    .line 405
    .end local v24    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .end local v25    # "systemSupports64BitAbi":Z
    .restart local v2    # "systemSupports64BitAbi":Z
    .restart local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    :cond_6
    move/from16 v25, v2

    move-object/from16 v24, v3

    .end local v2    # "systemSupports64BitAbi":Z
    .end local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v24    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v25    # "systemSupports64BitAbi":Z
    move/from16 v2, v22

    .line 420
    .end local v22    # "abi32":I
    .local v2, "abi32":I
    :goto_6
    const-string v3, "Shared library native lib extraction not supported"

    if-ltz v2, :cond_7

    :try_start_9
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v22

    if-eqz v22, :cond_7

    if-nez v10, :cond_8

    :cond_7
    goto :goto_7

    .line 421
    :cond_8
    new-instance v8, Lcom/android/server/pm/PackageManagerException;

    const/16 v9, -0x6e

    invoke-direct {v8, v9, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local v4    # "primaryCpuAbi":Ljava/lang/String;
    .end local v5    # "secondaryCpuAbi":Ljava/lang/String;
    .end local v6    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .end local v10    # "extractLibs":Z
    .end local v11    # "nativeLibraryRootStr":Ljava/lang/String;
    .end local v12    # "useIsaSpecificSubdirs":Z
    .end local v13    # "onIncremental":Z
    .end local v20    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local v21    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v24    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .end local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .end local p1    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local p2    # "isSystemApp":Z
    .end local p3    # "isUpdatedSystemApp":Z
    .end local p4    # "cpuAbiOverride":Ljava/lang/String;
    .end local p5    # "appLib32InstallDir":Ljava/io/File;
    throw v8
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 425
    .restart local v4    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v5    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local v6    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .restart local v10    # "extractLibs":Z
    .restart local v11    # "nativeLibraryRootStr":Ljava/lang/String;
    .restart local v12    # "useIsaSpecificSubdirs":Z
    .restart local v13    # "onIncremental":Z
    .restart local v20    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v21    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v24    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .restart local p1    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local p2    # "isSystemApp":Z
    .restart local p3    # "isUpdatedSystemApp":Z
    .restart local p4    # "cpuAbiOverride":Ljava/lang/String;
    .restart local p5    # "appLib32InstallDir":Ljava/io/File;
    :goto_7
    move-object/from16 v22, v4

    .end local v4    # "primaryCpuAbi":Ljava/lang/String;
    .local v22, "primaryCpuAbi":Ljava/lang/String;
    :try_start_a
    const-string v4, "Error unpackaging 32 bit native libs for multiarch app."
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v7, :cond_9

    if-eqz v15, :cond_9

    move-object/from16 v26, v5

    const/4 v5, 0x1

    goto :goto_8

    :cond_9
    move-object/from16 v26, v5

    move/from16 v5, v16

    .end local v5    # "secondaryCpuAbi":Ljava/lang/String;
    .local v26, "secondaryCpuAbi":Ljava/lang/String;
    :goto_8
    :try_start_b
    invoke-static {v4, v2, v5}, Lcom/android/server/pm/PackageAbiHelperImpl;->maybeThrowExceptionForMultiArchCopy(Ljava/lang/String;IZ)V

    .line 429
    if-eqz v25, :cond_b

    .line 430
    if-eqz v10, :cond_a

    .line 431
    const-wide/32 v4, 0x40000

    invoke-static {v4, v5, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 432
    invoke-static {v6, v0, v1, v12, v13}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    move-result v4

    move/from16 v23, v4

    const-wide/32 v4, 0x40000

    .end local v23    # "abi64":I
    .local v4, "abi64":I
    goto :goto_9

    .line 529
    .end local v0    # "nativeLibraryRoot":Ljava/io/File;
    .end local v1    # "supported64BitAbis":[Ljava/lang/String;
    .end local v2    # "abi32":I
    .end local v4    # "abi64":I
    .end local v7    # "forceMatch":Z
    .end local v14    # "supported32BitAbis":[Ljava/lang/String;
    .end local v15    # "systemSupports32BitAbi":Z
    .end local v25    # "systemSupports64BitAbi":Z
    :catchall_2
    move-exception v0

    move-object/from16 v4, v22

    move-object/from16 v5, v26

    goto/16 :goto_17

    .line 526
    :catch_2
    move-exception v0

    move-object/from16 v4, v22

    move-object/from16 v5, v26

    goto/16 :goto_15

    .line 436
    .restart local v0    # "nativeLibraryRoot":Ljava/io/File;
    .restart local v1    # "supported64BitAbis":[Ljava/lang/String;
    .restart local v2    # "abi32":I
    .restart local v7    # "forceMatch":Z
    .restart local v14    # "supported32BitAbis":[Ljava/lang/String;
    .restart local v15    # "systemSupports32BitAbi":Z
    .restart local v23    # "abi64":I
    .restart local v25    # "systemSupports64BitAbi":Z
    :cond_a
    const-wide/32 v4, 0x40000

    invoke-static {v4, v5, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 437
    invoke-static {v6, v1}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v8

    .end local v23    # "abi64":I
    .local v8, "abi64":I
    move/from16 v23, v8

    .line 440
    .end local v8    # "abi64":I
    .restart local v23    # "abi64":I
    :goto_9
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    move/from16 v4, v23

    goto :goto_a

    .line 429
    :cond_b
    move/from16 v4, v23

    .line 443
    .end local v23    # "abi64":I
    .restart local v4    # "abi64":I
    :goto_a
    const-string v5, "Error unpackaging 64 bit native libs for multiarch app."

    if-eqz v7, :cond_c

    if-eqz v25, :cond_c

    const/4 v8, 0x1

    goto :goto_b

    :cond_c
    move/from16 v8, v16

    :goto_b
    invoke-static {v5, v4, v8}, Lcom/android/server/pm/PackageAbiHelperImpl;->maybeThrowExceptionForMultiArchCopy(Ljava/lang/String;IZ)V

    .line 447
    if-ltz v4, :cond_f

    .line 449
    if-eqz v10, :cond_d

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v5

    if-nez v5, :cond_e

    :cond_d
    goto :goto_c

    .line 450
    :cond_e
    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    const/16 v9, -0x6e

    invoke-direct {v5, v9, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local v6    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .end local v10    # "extractLibs":Z
    .end local v11    # "nativeLibraryRootStr":Ljava/lang/String;
    .end local v12    # "useIsaSpecificSubdirs":Z
    .end local v13    # "onIncremental":Z
    .end local v20    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local v21    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v22    # "primaryCpuAbi":Ljava/lang/String;
    .end local v24    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .end local v26    # "secondaryCpuAbi":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .end local p1    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local p2    # "isSystemApp":Z
    .end local p3    # "isUpdatedSystemApp":Z
    .end local p4    # "cpuAbiOverride":Ljava/lang/String;
    .end local p5    # "appLib32InstallDir":Ljava/io/File;
    throw v5

    .line 453
    .restart local v6    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .restart local v10    # "extractLibs":Z
    .restart local v11    # "nativeLibraryRootStr":Ljava/lang/String;
    .restart local v12    # "useIsaSpecificSubdirs":Z
    .restart local v13    # "onIncremental":Z
    .restart local v20    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v21    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v22    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v24    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v26    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .restart local p1    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local p2    # "isSystemApp":Z
    .restart local p3    # "isUpdatedSystemApp":Z
    .restart local p4    # "cpuAbiOverride":Ljava/lang/String;
    .restart local p5    # "appLib32InstallDir":Ljava/io/File;
    :goto_c
    aget-object v3, v1, v4
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .end local v22    # "primaryCpuAbi":Ljava/lang/String;
    .local v3, "primaryCpuAbi":Ljava/lang/String;
    goto :goto_d

    .line 447
    .end local v3    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v22    # "primaryCpuAbi":Ljava/lang/String;
    :cond_f
    move-object/from16 v3, v22

    .line 456
    .end local v22    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v3    # "primaryCpuAbi":Ljava/lang/String;
    :goto_d
    if-ltz v2, :cond_12

    .line 457
    :try_start_c
    aget-object v5, v14, v2

    .line 458
    .local v5, "abi":Ljava/lang/String;
    if-ltz v4, :cond_11

    .line 459
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->is32BitAbiPreferred()Z

    move-result v8
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-eqz v8, :cond_10

    .line 460
    move-object v8, v3

    .line 461
    .end local v26    # "secondaryCpuAbi":Ljava/lang/String;
    .local v8, "secondaryCpuAbi":Ljava/lang/String;
    move-object v3, v5

    move-object v4, v3

    move-object v5, v8

    goto :goto_e

    .line 463
    .end local v8    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local v26    # "secondaryCpuAbi":Ljava/lang/String;
    :cond_10
    move-object v8, v5

    move-object v4, v3

    .end local v26    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local v8    # "secondaryCpuAbi":Ljava/lang/String;
    goto :goto_e

    .line 529
    .end local v0    # "nativeLibraryRoot":Ljava/io/File;
    .end local v1    # "supported64BitAbis":[Ljava/lang/String;
    .end local v2    # "abi32":I
    .end local v4    # "abi64":I
    .end local v5    # "abi":Ljava/lang/String;
    .end local v7    # "forceMatch":Z
    .end local v8    # "secondaryCpuAbi":Ljava/lang/String;
    .end local v14    # "supported32BitAbis":[Ljava/lang/String;
    .end local v15    # "systemSupports32BitAbi":Z
    .end local v25    # "systemSupports64BitAbi":Z
    .restart local v26    # "secondaryCpuAbi":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object v4, v3

    move-object/from16 v5, v26

    goto/16 :goto_17

    .line 526
    :catch_3
    move-exception v0

    move-object v4, v3

    move-object/from16 v5, v26

    goto/16 :goto_15

    .line 466
    .restart local v0    # "nativeLibraryRoot":Ljava/io/File;
    .restart local v1    # "supported64BitAbis":[Ljava/lang/String;
    .restart local v2    # "abi32":I
    .restart local v4    # "abi64":I
    .restart local v5    # "abi":Ljava/lang/String;
    .restart local v7    # "forceMatch":Z
    .restart local v14    # "supported32BitAbis":[Ljava/lang/String;
    .restart local v15    # "systemSupports32BitAbi":Z
    .restart local v25    # "systemSupports64BitAbi":Z
    :cond_11
    move-object v3, v5

    move-object v4, v3

    move-object/from16 v5, v26

    goto :goto_e

    .line 456
    .end local v5    # "abi":Ljava/lang/String;
    :cond_12
    move-object v4, v3

    move-object/from16 v5, v26

    .line 469
    .end local v1    # "supported64BitAbis":[Ljava/lang/String;
    .end local v2    # "abi32":I
    .end local v3    # "primaryCpuAbi":Ljava/lang/String;
    .end local v7    # "forceMatch":Z
    .end local v14    # "supported32BitAbis":[Ljava/lang/String;
    .end local v15    # "systemSupports32BitAbi":Z
    .end local v25    # "systemSupports64BitAbi":Z
    .end local v26    # "secondaryCpuAbi":Ljava/lang/String;
    .local v4, "primaryCpuAbi":Ljava/lang/String;
    .local v5, "secondaryCpuAbi":Ljava/lang/String;
    :goto_e
    goto/16 :goto_13

    .line 529
    .end local v0    # "nativeLibraryRoot":Ljava/io/File;
    .end local v4    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v22    # "primaryCpuAbi":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object/from16 v26, v5

    move-object/from16 v4, v22

    .end local v5    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local v26    # "secondaryCpuAbi":Ljava/lang/String;
    goto/16 :goto_17

    .line 526
    .end local v26    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local v5    # "secondaryCpuAbi":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object/from16 v26, v5

    move-object/from16 v4, v22

    .end local v5    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local v26    # "secondaryCpuAbi":Ljava/lang/String;
    goto/16 :goto_15

    .line 529
    .end local v22    # "primaryCpuAbi":Ljava/lang/String;
    .end local v24    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .end local v26    # "secondaryCpuAbi":Ljava/lang/String;
    .local v3, "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v4    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v5    # "secondaryCpuAbi":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move-object/from16 v24, v3

    move-object/from16 v22, v4

    move-object/from16 v26, v5

    .end local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .end local v4    # "primaryCpuAbi":Ljava/lang/String;
    .end local v5    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local v22    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v24    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v26    # "secondaryCpuAbi":Ljava/lang/String;
    goto/16 :goto_17

    .line 526
    .end local v22    # "primaryCpuAbi":Ljava/lang/String;
    .end local v24    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .end local v26    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v4    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v5    # "secondaryCpuAbi":Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object/from16 v24, v3

    move-object/from16 v22, v4

    move-object/from16 v26, v5

    .end local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .end local v4    # "primaryCpuAbi":Ljava/lang/String;
    .end local v5    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local v22    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v24    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v26    # "secondaryCpuAbi":Ljava/lang/String;
    goto/16 :goto_15

    .line 529
    .end local v20    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local v21    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v22    # "primaryCpuAbi":Ljava/lang/String;
    .end local v24    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .end local v26    # "secondaryCpuAbi":Ljava/lang/String;
    .local v1, "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .local v2, "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v4    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v5    # "secondaryCpuAbi":Ljava/lang/String;
    :catchall_6
    move-exception v0

    move-object/from16 v21, v1

    move-object/from16 v20, v2

    move-object/from16 v24, v3

    move-object/from16 v22, v4

    move-object/from16 v26, v5

    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .end local v4    # "primaryCpuAbi":Ljava/lang/String;
    .end local v5    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local v20    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v21    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v22    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v24    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v26    # "secondaryCpuAbi":Ljava/lang/String;
    goto/16 :goto_17

    .line 526
    .end local v20    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local v21    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v22    # "primaryCpuAbi":Ljava/lang/String;
    .end local v24    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .end local v26    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v4    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v5    # "secondaryCpuAbi":Ljava/lang/String;
    :catch_6
    move-exception v0

    move-object/from16 v21, v1

    move-object/from16 v20, v2

    move-object/from16 v24, v3

    move-object/from16 v22, v4

    move-object/from16 v26, v5

    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .end local v4    # "primaryCpuAbi":Ljava/lang/String;
    .end local v5    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local v20    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v21    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v22    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v24    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v26    # "secondaryCpuAbi":Ljava/lang/String;
    goto/16 :goto_15

    .line 470
    .end local v20    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local v21    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v22    # "primaryCpuAbi":Ljava/lang/String;
    .end local v24    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .end local v26    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local v0    # "nativeLibraryRoot":Ljava/io/File;
    .restart local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v4    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v5    # "secondaryCpuAbi":Ljava/lang/String;
    :cond_13
    move-object/from16 v21, v1

    move-object/from16 v20, v2

    move-object/from16 v24, v3

    move-object/from16 v22, v4

    move-object/from16 v26, v5

    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .end local v4    # "primaryCpuAbi":Ljava/lang/String;
    .end local v5    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local v20    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v21    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v22    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v24    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v26    # "secondaryCpuAbi":Ljava/lang/String;
    if-eqz p4, :cond_14

    .line 471
    :try_start_d
    filled-new-array/range {p4 .. p4}, [Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    :cond_14
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    :goto_f
    nop

    .line 481
    .local v1, "abiList":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 483
    .local v2, "needsRenderScriptOverride":Z
    sget-object v3, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_16

    if-nez p4, :cond_16

    .line 484
    invoke-static {v6}, Lcom/android/internal/content/NativeLibraryHelper;->hasRenderscriptBitcode(Lcom/android/internal/content/NativeLibraryHelper$Handle;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 485
    sget-object v3, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_15

    .line 486
    sget-object v3, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    move-object v1, v3

    .line 487
    const/4 v2, 0x1

    goto :goto_10

    .line 489
    :cond_15
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    const-string v4, "Apps that contain RenderScript with target API level < 21 are not supported on 64-bit only platforms"

    const/16 v5, -0x10

    invoke-direct {v3, v5, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local v6    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .end local v10    # "extractLibs":Z
    .end local v11    # "nativeLibraryRootStr":Ljava/lang/String;
    .end local v12    # "useIsaSpecificSubdirs":Z
    .end local v13    # "onIncremental":Z
    .end local v20    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local v21    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v22    # "primaryCpuAbi":Ljava/lang/String;
    .end local v24    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .end local v26    # "secondaryCpuAbi":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .end local p1    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local p2    # "isSystemApp":Z
    .end local p3    # "isUpdatedSystemApp":Z
    .end local p4    # "cpuAbiOverride":Ljava/lang/String;
    .end local p5    # "appLib32InstallDir":Ljava/io/File;
    throw v3

    .line 497
    .restart local v6    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .restart local v10    # "extractLibs":Z
    .restart local v11    # "nativeLibraryRootStr":Ljava/lang/String;
    .restart local v12    # "useIsaSpecificSubdirs":Z
    .restart local v13    # "onIncremental":Z
    .restart local v20    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v21    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v22    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v24    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v26    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .restart local p1    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local p2    # "isSystemApp":Z
    .restart local p3    # "isUpdatedSystemApp":Z
    .restart local p4    # "cpuAbiOverride":Ljava/lang/String;
    .restart local p5    # "appLib32InstallDir":Ljava/io/File;
    :cond_16
    :goto_10
    if-eqz v10, :cond_17

    .line 498
    const-wide/32 v4, 0x40000

    invoke-static {v4, v5, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 499
    invoke-static {v6, v0, v1, v12, v13}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    move-result v3

    .local v3, "copyRet":I
    goto :goto_11

    .line 502
    .end local v3    # "copyRet":I
    :cond_17
    const-wide/32 v4, 0x40000

    invoke-static {v4, v5, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 503
    invoke-static {v6, v1}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v3

    .line 505
    .restart local v3    # "copyRet":I
    :goto_11
    const-wide/32 v17, 0x40000

    invoke-static/range {v17 .. v18}, Landroid/os/Trace;->traceEnd(J)V

    .line 507
    const/16 v4, -0x72

    if-gez v3, :cond_18

    if-ne v3, v4, :cond_19

    :cond_18
    goto :goto_12

    .line 508
    :cond_19
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error unpackaging native libs for app, errorCode="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v9, -0x6e

    invoke-direct {v4, v9, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local v6    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .end local v10    # "extractLibs":Z
    .end local v11    # "nativeLibraryRootStr":Ljava/lang/String;
    .end local v12    # "useIsaSpecificSubdirs":Z
    .end local v13    # "onIncremental":Z
    .end local v20    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local v21    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v22    # "primaryCpuAbi":Ljava/lang/String;
    .end local v24    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .end local v26    # "secondaryCpuAbi":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .end local p1    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local p2    # "isSystemApp":Z
    .end local p3    # "isUpdatedSystemApp":Z
    .end local p4    # "cpuAbiOverride":Ljava/lang/String;
    .end local p5    # "appLib32InstallDir":Ljava/io/File;
    throw v4

    .line 512
    .restart local v6    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .restart local v10    # "extractLibs":Z
    .restart local v11    # "nativeLibraryRootStr":Ljava/lang/String;
    .restart local v12    # "useIsaSpecificSubdirs":Z
    .restart local v13    # "onIncremental":Z
    .restart local v20    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v21    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v22    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v24    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v26    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .restart local p1    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local p2    # "isSystemApp":Z
    .restart local p3    # "isUpdatedSystemApp":Z
    .restart local p4    # "cpuAbiOverride":Ljava/lang/String;
    .restart local p5    # "appLib32InstallDir":Ljava/io/File;
    :goto_12
    if-ltz v3, :cond_1b

    .line 514
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 518
    aget-object v4, v1, v3

    move-object/from16 v5, v26

    .end local v22    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v4    # "primaryCpuAbi":Ljava/lang/String;
    goto :goto_13

    .line 515
    .end local v4    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v22    # "primaryCpuAbi":Ljava/lang/String;
    :cond_1a
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    const-string v5, "Shared library with native libs must be multiarch"

    const/16 v9, -0x6e

    invoke-direct {v4, v9, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local v6    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .end local v10    # "extractLibs":Z
    .end local v11    # "nativeLibraryRootStr":Ljava/lang/String;
    .end local v12    # "useIsaSpecificSubdirs":Z
    .end local v13    # "onIncremental":Z
    .end local v20    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local v21    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v22    # "primaryCpuAbi":Ljava/lang/String;
    .end local v24    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .end local v26    # "secondaryCpuAbi":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .end local p1    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local p2    # "isSystemApp":Z
    .end local p3    # "isUpdatedSystemApp":Z
    .end local p4    # "cpuAbiOverride":Ljava/lang/String;
    .end local p5    # "appLib32InstallDir":Ljava/io/File;
    throw v4

    .line 519
    .restart local v6    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .restart local v10    # "extractLibs":Z
    .restart local v11    # "nativeLibraryRootStr":Ljava/lang/String;
    .restart local v12    # "useIsaSpecificSubdirs":Z
    .restart local v13    # "onIncremental":Z
    .restart local v20    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v21    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v22    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v24    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v26    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/pm/PackageAbiHelperImpl;
    .restart local p1    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local p2    # "isSystemApp":Z
    .restart local p3    # "isUpdatedSystemApp":Z
    .restart local p4    # "cpuAbiOverride":Ljava/lang/String;
    .restart local p5    # "appLib32InstallDir":Ljava/io/File;
    :cond_1b
    if-ne v3, v4, :cond_1c

    if-eqz p4, :cond_1c

    .line 521
    move-object/from16 v4, p4

    move-object/from16 v5, v26

    .end local v22    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v4    # "primaryCpuAbi":Ljava/lang/String;
    goto :goto_13

    .line 522
    .end local v4    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v22    # "primaryCpuAbi":Ljava/lang/String;
    :cond_1c
    if-eqz v2, :cond_1d

    .line 523
    aget-object v4, v1, v16
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-object/from16 v5, v26

    .end local v22    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v4    # "primaryCpuAbi":Ljava/lang/String;
    goto :goto_13

    .line 522
    .end local v4    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v22    # "primaryCpuAbi":Ljava/lang/String;
    :cond_1d
    move-object/from16 v4, v22

    move-object/from16 v5, v26

    .line 529
    .end local v0    # "nativeLibraryRoot":Ljava/io/File;
    .end local v1    # "abiList":[Ljava/lang/String;
    .end local v2    # "needsRenderScriptOverride":Z
    .end local v3    # "copyRet":I
    .end local v22    # "primaryCpuAbi":Ljava/lang/String;
    .end local v26    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local v4    # "primaryCpuAbi":Ljava/lang/String;
    .restart local v5    # "secondaryCpuAbi":Ljava/lang/String;
    :goto_13
    nop

    :goto_14
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 530
    move-object v0, v4

    move-object v1, v5

    move-object v2, v6

    goto :goto_16

    .line 529
    .end local v20    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local v21    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v24    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .local v1, "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .local v2, "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .local v3, "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    :catchall_7
    move-exception v0

    move-object/from16 v21, v1

    move-object/from16 v20, v2

    move-object/from16 v24, v3

    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v20    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v21    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v24    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    goto :goto_17

    .line 526
    .end local v20    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local v21    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v24    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    :catch_7
    move-exception v0

    move-object/from16 v21, v1

    move-object/from16 v20, v2

    move-object/from16 v24, v3

    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .end local v2    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .end local v3    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .restart local v20    # "pkgRawSecondaryCpuAbi":Ljava/lang/String;
    .restart local v21    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    .restart local v24    # "initialLibraryPaths":Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    :goto_15
    nop

    .line 527
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_e
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get canonical file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 529
    nop

    .end local v0    # "ioe":Ljava/io/IOException;
    goto :goto_14

    .line 535
    .end local v4    # "primaryCpuAbi":Ljava/lang/String;
    .end local v5    # "secondaryCpuAbi":Ljava/lang/String;
    .end local v6    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .local v0, "primaryCpuAbi":Ljava/lang/String;
    .local v1, "secondaryCpuAbi":Ljava/lang/String;
    .local v2, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :goto_16
    new-instance v4, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-direct {v4, v0, v1}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    .local v4, "abis":Lcom/android/server/pm/PackageAbiHelper$Abis;
    new-instance v3, Landroid/util/Pair;

    .line 538
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v7

    .line 537
    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v5, p5

    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveNativeLibraryPaths(Lcom/android/server/pm/PackageAbiHelper$Abis;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 536
    return-object v3

    .line 529
    .end local v0    # "primaryCpuAbi":Ljava/lang/String;
    .end local v1    # "secondaryCpuAbi":Ljava/lang/String;
    .end local v2    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .local v4, "primaryCpuAbi":Ljava/lang/String;
    .restart local v5    # "secondaryCpuAbi":Ljava/lang/String;
    .restart local v6    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :goto_17
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 530
    throw v0
.end method

.method public getAdjustedAbiForSharedUser(Landroid/util/ArraySet;Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;
    .locals 8
    .param p2, "scannedPackage"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 572
    .local p1, "packagesForUser":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    const/4 v0, 0x0

    .line 573
    .local v0, "requiredInstructionSet":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 574
    invoke-static {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v1

    .line 575
    .local v1, "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 576
    invoke-static {v1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 580
    .end local v1    # "pkgRawPrimaryCpuAbi":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .line 581
    .local v1, "requirer":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 586
    .local v3, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 587
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 586
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 588
    goto :goto_0

    .line 590
    :cond_1
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 591
    goto :goto_0

    .line 594
    :cond_2
    nop

    .line 595
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 596
    .local v4, "instructionSet":Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 599
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Instruction set mismatch, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    if-nez v1, :cond_3

    const-string v6, "[caller]"

    goto :goto_1

    :cond_3
    move-object v6, v1

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " requires "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " whereas "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 603
    .local v5, "errorMessage":Ljava/lang/String;
    const-string v6, "PackageManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    .end local v5    # "errorMessage":Ljava/lang/String;
    :cond_4
    if-nez v0, :cond_5

    .line 607
    move-object v0, v4

    .line 608
    move-object v1, v3

    .line 610
    .end local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v4    # "instructionSet":Ljava/lang/String;
    :cond_5
    goto :goto_0

    .line 612
    :cond_6
    if-nez v0, :cond_7

    .line 613
    const/4 v2, 0x0

    return-object v2

    .line 616
    :cond_7
    if-eqz v1, :cond_8

    .line 621
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v2

    .local v2, "adjustedAbi":Ljava/lang/String;
    goto :goto_2

    .line 625
    .end local v2    # "adjustedAbi":Ljava/lang/String;
    :cond_8
    invoke-static {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v2

    .line 627
    .restart local v2    # "adjustedAbi":Ljava/lang/String;
    :goto_2
    return-object v2
.end method

.method public getBundledAppAbis(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/PackageAbiHelper$Abis;
    .locals 3
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 228
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "apkName":Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/PackageAbiHelperImpl;->calculateBundledApkRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "apkRoot":Ljava/lang/String;
    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/pm/PackageAbiHelperImpl;->getBundledAppAbi(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageAbiHelper$Abis;

    move-result-object v2

    .line 234
    .local v2, "abis":Lcom/android/server/pm/PackageAbiHelper$Abis;
    return-object v2
.end method
