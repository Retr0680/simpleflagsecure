.class public Lcom/android/server/stats/pull/psi/PsiExtractor;
.super Ljava/lang/Object;
.source "PsiExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/stats/pull/psi/PsiExtractor$PsiReader;
    }
.end annotation


# static fields
.field private static final FULL:Ljava/lang/String; = "full"

.field private static final PSI_CPU_PATH:Ljava/lang/String; = "/proc/pressure/cpu"

.field private static final PSI_IO_PATH:Ljava/lang/String; = "/proc/pressure/io"

.field private static final PSI_MEMORY_PATH:Ljava/lang/String; = "/proc/pressure/memory"

.field private static final PSI_PATTERN_TEMPLATE:Ljava/lang/String; = ".*{0} avg10=(\\d+.\\d+) avg60=(\\d+.\\d+) avg300=(\\d+.\\d+) total=(\\d+).*"

.field private static final SOME:Ljava/lang/String; = "some"

.field private static final TAG:Ljava/lang/String; = "PsiExtractor"


# instance fields
.field private final mPsiReader:Lcom/android/server/stats/pull/psi/PsiExtractor$PsiReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/android/server/stats/pull/psi/PsiExtractor$PsiReader;

    invoke-direct {v0}, Lcom/android/server/stats/pull/psi/PsiExtractor$PsiReader;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/psi/PsiExtractor;->mPsiReader:Lcom/android/server/stats/pull/psi/PsiExtractor$PsiReader;

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/android/server/stats/pull/psi/PsiExtractor$PsiReader;)V
    .locals 0
    .param p1, "psiReader"    # Lcom/android/server/stats/pull/psi/PsiExtractor$PsiReader;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/server/stats/pull/psi/PsiExtractor;->mPsiReader:Lcom/android/server/stats/pull/psi/PsiExtractor$PsiReader;

    .line 56
    return-void
.end method

.method private static parsePsiData(Ljava/lang/String;Lcom/android/server/stats/pull/psi/PsiData$ResourceType;)Lcom/android/server/stats/pull/psi/PsiData;
    .locals 10
    .param p0, "psiFileData"    # Ljava/lang/String;
    .param p1, "resourceType"    # Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    .line 122
    const-string/jumbo v0, "some"

    invoke-static {p0, v0, p1}, Lcom/android/server/stats/pull/psi/PsiExtractor;->parsePsiString(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/stats/pull/psi/PsiData$ResourceType;)Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;

    move-result-object v0

    .line 123
    .local v0, "someAppsStallInfo":Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;
    const-string/jumbo v1, "full"

    invoke-static {p0, v1, p1}, Lcom/android/server/stats/pull/psi/PsiExtractor;->parsePsiString(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/stats/pull/psi/PsiData$ResourceType;)Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;

    move-result-object v1

    .line 125
    .local v1, "fullAppsStallInfo":Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;
    const-string v2, "PsiExtractor"

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 126
    const-string v3, "Returning empty PSI: some or full line are failed to parse"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v2, 0x0

    return-object v2

    .line 128
    :cond_0
    if-nez v0, :cond_1

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Replacing some info with empty PSI record for the resource type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v4, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;

    const/high16 v7, -0x40800000    # -1.0f

    const-wide/16 v8, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, -0x40800000    # -1.0f

    invoke-direct/range {v4 .. v9}, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;-><init>(FFFJ)V

    move-object v0, v4

    goto :goto_0

    .line 133
    :cond_1
    if-nez v1, :cond_2

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Replacing full info with empty PSI record for the resource type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v4, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;

    const/high16 v7, -0x40800000    # -1.0f

    const-wide/16 v8, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, -0x40800000    # -1.0f

    invoke-direct/range {v4 .. v9}, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;-><init>(FFFJ)V

    move-object v1, v4

    .line 139
    :cond_2
    :goto_0
    new-instance v2, Lcom/android/server/stats/pull/psi/PsiData;

    invoke-direct {v2, p1, v0, v1}, Lcom/android/server/stats/pull/psi/PsiData;-><init>(Lcom/android/server/stats/pull/psi/PsiData$ResourceType;Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;)V

    return-object v2
.end method

.method private static parsePsiString(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/stats/pull/psi/PsiData$ResourceType;)Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;
    .locals 11
    .param p0, "psiFileData"    # Ljava/lang/String;
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "resourceType"    # Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    .line 87
    const-string/jumbo v0, "full"

    if-ne p1, v0, :cond_0

    sget-object v1, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;->CPU:Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    if-ne p2, v1, :cond_0

    .line 88
    const-string/jumbo v1, "some"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    new-instance v1, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;-><init>(FFFJ)V

    return-object v1

    .line 93
    :cond_0
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    .line 94
    const-string v1, ".*{0} avg10=(\\d+.\\d+) avg60=(\\d+.\\d+) avg300=(\\d+.\\d+) total=(\\d+).*"

    invoke-static {v1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 95
    .local v1, "psiStringPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 100
    .local v2, "psiLineMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v3, 0x0

    const-string v4, "PsiExtractor"

    if-nez v0, :cond_1

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Returning null: the line \""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" is not in expected pattern."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-object v3

    .line 106
    :cond_1
    :try_start_0
    new-instance v5, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;

    .line 107
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 108
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 109
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 110
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-direct/range {v5 .. v10}, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;-><init>(FFFJ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    return-object v5

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Returning null: some value in line \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\" cannot be parsed as numeric."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-object v3
.end method


# virtual methods
.method public getPsiData(Lcom/android/server/stats/pull/psi/PsiData$ResourceType;)Lcom/android/server/stats/pull/psi/PsiData;
    .locals 2
    .param p1, "resourceType"    # Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    .line 67
    sget-object v0, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;->MEMORY:Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    if-ne p1, v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/server/stats/pull/psi/PsiExtractor;->mPsiReader:Lcom/android/server/stats/pull/psi/PsiExtractor$PsiReader;

    const-string v1, "/proc/pressure/memory"

    invoke-virtual {v0, v1}, Lcom/android/server/stats/pull/psi/PsiExtractor$PsiReader;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "psiFileData":Ljava/lang/String;
    goto :goto_0

    .line 69
    .end local v0    # "psiFileData":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;->IO:Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    if-ne p1, v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/android/server/stats/pull/psi/PsiExtractor;->mPsiReader:Lcom/android/server/stats/pull/psi/PsiExtractor$PsiReader;

    const-string v1, "/proc/pressure/io"

    invoke-virtual {v0, v1}, Lcom/android/server/stats/pull/psi/PsiExtractor$PsiReader;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "psiFileData":Ljava/lang/String;
    goto :goto_0

    .line 71
    .end local v0    # "psiFileData":Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;->CPU:Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    if-ne p1, v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/android/server/stats/pull/psi/PsiExtractor;->mPsiReader:Lcom/android/server/stats/pull/psi/PsiExtractor$PsiReader;

    const-string v1, "/proc/pressure/cpu"

    invoke-virtual {v0, v1}, Lcom/android/server/stats/pull/psi/PsiExtractor$PsiReader;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .restart local v0    # "psiFileData":Ljava/lang/String;
    :goto_0
    invoke-static {v0, p1}, Lcom/android/server/stats/pull/psi/PsiExtractor;->parsePsiData(Ljava/lang/String;Lcom/android/server/stats/pull/psi/PsiData$ResourceType;)Lcom/android/server/stats/pull/psi/PsiData;

    move-result-object v1

    return-object v1

    .line 74
    .end local v0    # "psiFileData":Ljava/lang/String;
    :cond_2
    const-string v0, "PsiExtractor"

    const-string v1, "PsiExtractor failure: cannot read kernel source file, returning null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v0, 0x0

    return-object v0
.end method
