.class public Lcom/android/server/webkit/SystemImpl;
.super Ljava/lang/Object;
.source "SystemImpl.java"

# interfaces
.implements Lcom/android/server/webkit/SystemInterface;


# static fields
.field private static final PACKAGE_FLAGS:I = 0x4004c0

.field private static final PIN_GROUP:Ljava/lang/String; = "webview"

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_AVAILABILITY:Ljava/lang/String; = "availableByDefault"

.field private static final TAG_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final TAG_FALLBACK:Ljava/lang/String; = "isFallback"

.field private static final TAG_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final TAG_SIGNATURE:Ljava/lang/String; = "signature"

.field private static final TAG_START:Ljava/lang/String; = "webviewproviders"

.field private static final TAG_WEBVIEW_PROVIDER:Ljava/lang/String; = "webviewprovider"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mWebViewProviderPackages:[Landroid/webkit/WebViewProviderInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lcom/android/server/webkit/SystemImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/webkit/SystemImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .line 72
    const-string v0, "true"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/server/webkit/SystemImpl;->mContext:Landroid/content/Context;

    .line 75
    const/4 v1, 0x0

    .line 76
    .local v1, "numFallbackPackages":I
    const/4 v2, 0x0

    .line 77
    .local v2, "numAvailableByDefaultPackages":I
    const/4 v3, 0x0

    .line 78
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v4, "webViewProviders":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/WebViewProviderInfo;>;"
    :try_start_0
    iget-object v5, p0, Lcom/android/server/webkit/SystemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1170007

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    move-object v3, v5

    .line 82
    const-string v5, "webviewproviders"

    invoke-static {v3, v5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 84
    :goto_0
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 85
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .local v5, "element":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 87
    nop

    .line 130
    .end local v5    # "element":Ljava/lang/String;
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 132
    if-eqz v2, :cond_0

    .line 136
    nop

    .line 137
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/webkit/WebViewProviderInfo;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/webkit/WebViewProviderInfo;

    iput-object v0, p0, Lcom/android/server/webkit/SystemImpl;->mWebViewProviderPackages:[Landroid/webkit/WebViewProviderInfo;

    .line 138
    return-void

    .line 133
    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v5, "There must be at least one WebView package that is available by default"

    invoke-direct {v0, v5}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    .restart local v5    # "element":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v6, "webviewprovider"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 90
    const-string v6, "packageName"

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v9, v6

    .line 91
    .local v9, "packageName":Ljava/lang/String;
    if-eqz v9, :cond_7

    .line 95
    const-string v6, "description"

    invoke-interface {v3, v7, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 96
    .local v10, "description":Ljava/lang/String;
    if-eqz v10, :cond_6

    .line 100
    const-string v6, "availableByDefault"

    .line 101
    invoke-interface {v3, v7, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 100
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 102
    .local v11, "availableByDefault":Z
    const-string v6, "isFallback"

    .line 103
    invoke-interface {v3, v7, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 102
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 104
    .local v12, "isFallback":Z
    new-instance v8, Landroid/webkit/WebViewProviderInfo;

    .line 106
    invoke-static {v3}, Lcom/android/server/webkit/SystemImpl;->readSignatures(Landroid/content/res/XmlResourceParser;)[Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {v8 .. v13}, Landroid/webkit/WebViewProviderInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;)V

    .line 107
    .local v8, "currentProvider":Landroid/webkit/WebViewProviderInfo;
    iget-boolean v6, v8, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    if-eqz v6, :cond_4

    .line 108
    add-int/lit8 v1, v1, 0x1

    .line 109
    iget-boolean v6, v8, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v6, :cond_3

    .line 113
    const/4 v6, 0x1

    if-gt v1, v6, :cond_2

    goto :goto_1

    .line 114
    :cond_2
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v6, "There can be at most one WebView fallback package."

    invoke-direct {v0, v6}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "numFallbackPackages":I
    .end local v2    # "numAvailableByDefaultPackages":I
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v4    # "webViewProviders":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/WebViewProviderInfo;>;"
    .end local p0    # "this":Lcom/android/server/webkit/SystemImpl;
    .end local p1    # "context":Landroid/content/Context;
    throw v0

    .line 130
    .end local v5    # "element":Ljava/lang/String;
    .end local v8    # "currentProvider":Landroid/webkit/WebViewProviderInfo;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "description":Ljava/lang/String;
    .end local v11    # "availableByDefault":Z
    .end local v12    # "isFallback":Z
    .restart local v1    # "numFallbackPackages":I
    .restart local v2    # "numAvailableByDefaultPackages":I
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v4    # "webViewProviders":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/WebViewProviderInfo;>;"
    .restart local p0    # "this":Lcom/android/server/webkit/SystemImpl;
    .restart local p1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 127
    :catch_0
    move-exception v0

    goto :goto_3

    .line 110
    .restart local v5    # "element":Ljava/lang/String;
    .restart local v8    # "currentProvider":Landroid/webkit/WebViewProviderInfo;
    .restart local v9    # "packageName":Ljava/lang/String;
    .restart local v10    # "description":Ljava/lang/String;
    .restart local v11    # "availableByDefault":Z
    .restart local v12    # "isFallback":Z
    :cond_3
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v6, "Each WebView fallback package must be available by default."

    invoke-direct {v0, v6}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "numFallbackPackages":I
    .end local v2    # "numAvailableByDefaultPackages":I
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v4    # "webViewProviders":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/WebViewProviderInfo;>;"
    .end local p0    # "this":Lcom/android/server/webkit/SystemImpl;
    .end local p1    # "context":Landroid/content/Context;
    throw v0

    .line 118
    .restart local v1    # "numFallbackPackages":I
    .restart local v2    # "numAvailableByDefaultPackages":I
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v4    # "webViewProviders":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/WebViewProviderInfo;>;"
    .restart local p0    # "this":Lcom/android/server/webkit/SystemImpl;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_4
    :goto_1
    iget-boolean v6, v8, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v6, :cond_5

    .line 119
    add-int/lit8 v2, v2, 0x1

    .line 121
    :cond_5
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    nop

    .end local v8    # "currentProvider":Landroid/webkit/WebViewProviderInfo;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "description":Ljava/lang/String;
    .end local v11    # "availableByDefault":Z
    .end local v12    # "isFallback":Z
    goto :goto_2

    .line 97
    .restart local v9    # "packageName":Ljava/lang/String;
    .restart local v10    # "description":Ljava/lang/String;
    :cond_6
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v6, "WebView provider in framework resources missing description"

    invoke-direct {v0, v6}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "numFallbackPackages":I
    .end local v2    # "numAvailableByDefaultPackages":I
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v4    # "webViewProviders":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/WebViewProviderInfo;>;"
    .end local p0    # "this":Lcom/android/server/webkit/SystemImpl;
    .end local p1    # "context":Landroid/content/Context;
    throw v0

    .line 92
    .end local v10    # "description":Ljava/lang/String;
    .restart local v1    # "numFallbackPackages":I
    .restart local v2    # "numAvailableByDefaultPackages":I
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v4    # "webViewProviders":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/WebViewProviderInfo;>;"
    .restart local p0    # "this":Lcom/android/server/webkit/SystemImpl;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_7
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v6, "WebView provider in framework resources missing package name"

    invoke-direct {v0, v6}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "numFallbackPackages":I
    .end local v2    # "numAvailableByDefaultPackages":I
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v4    # "webViewProviders":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/WebViewProviderInfo;>;"
    .end local p0    # "this":Lcom/android/server/webkit/SystemImpl;
    .end local p1    # "context":Landroid/content/Context;
    throw v0

    .line 124
    .end local v9    # "packageName":Ljava/lang/String;
    .restart local v1    # "numFallbackPackages":I
    .restart local v2    # "numAvailableByDefaultPackages":I
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v4    # "webViewProviders":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/WebViewProviderInfo;>;"
    .restart local p0    # "this":Lcom/android/server/webkit/SystemImpl;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_8
    sget-object v6, Lcom/android/server/webkit/SystemImpl;->TAG:Ljava/lang/String;

    const-string v7, "Found an element that is not a WebView provider"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    .end local v5    # "element":Ljava/lang/String;
    :goto_2
    goto/16 :goto_0

    .line 127
    :goto_3
    nop

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Landroid/util/AndroidRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error when parsing WebView config "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "numFallbackPackages":I
    .end local v2    # "numAvailableByDefaultPackages":I
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v4    # "webViewProviders":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/WebViewProviderInfo;>;"
    .end local p0    # "this":Lcom/android/server/webkit/SystemImpl;
    .end local p1    # "context":Landroid/content/Context;
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "numFallbackPackages":I
    .restart local v2    # "numAvailableByDefaultPackages":I
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v4    # "webViewProviders":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/WebViewProviderInfo;>;"
    .restart local p0    # "this":Lcom/android/server/webkit/SystemImpl;
    .restart local p1    # "context":Landroid/content/Context;
    :goto_4
    if-eqz v3, :cond_9

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 131
    :cond_9
    throw v0
.end method

.method private enablePackageForUser(Ljava/lang/String;ZLandroid/os/UserHandle;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 210
    iget-object v0, p0, Lcom/android/server/webkit/SystemImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 211
    .local v0, "contextAsUser":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 213
    .local v2, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 215
    if-eqz p2, :cond_0

    move v3, v1

    goto :goto_0

    .line 216
    :cond_0
    const/4 v3, 0x3

    :goto_0
    nop

    .line 213
    :try_start_0
    invoke-virtual {v2, p1, v3, v1}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    goto :goto_2

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/android/server/webkit/SystemImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tried to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const-string v5, "enable "

    goto :goto_1

    :cond_1
    const-string v5, "disable "

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    return-void
.end method

.method private installPackageForUser(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 232
    iget-object v0, p0, Lcom/android/server/webkit/SystemImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 233
    .local v0, "contextAsUser":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v2

    .line 234
    .local v2, "installer":Landroid/content/pm/PackageInstaller;
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v1, v3}, Landroid/content/pm/PackageInstaller;->installExistingPackage(Ljava/lang/String;ILandroid/content/IntentSender;)V

    .line 235
    return-void
.end method

.method private static readSignatures(Landroid/content/res/XmlResourceParser;)[Ljava/lang/String;
    .locals 4
    .param p0, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v0, "signatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 161
    .local v1, "outerDepth":I
    :goto_0
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "signature"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "signature":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    .end local v2    # "signature":Ljava/lang/String;
    goto :goto_0

    .line 167
    :cond_0
    sget-object v2, Lcom/android/server/webkit/SystemImpl;->TAG:Ljava/lang/String;

    const-string v3, "Found an element in a webview provider that is not a signature"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 170
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method


# virtual methods
.method public enablePackageForAllUsers(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 203
    iget-object v0, p0, Lcom/android/server/webkit/SystemImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 204
    .local v0, "userManager":Landroid/os/UserManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserHandles(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 205
    .local v2, "user":Landroid/os/UserHandle;
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/webkit/SystemImpl;->enablePackageForUser(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 206
    .end local v2    # "user":Landroid/os/UserHandle;
    goto :goto_0

    .line 207
    :cond_0
    return-void
.end method

.method public ensureZygoteStarted()V
    .locals 0

    .line 261
    invoke-static {}, Landroid/webkit/WebViewZygote;->getProcess()Landroid/os/ZygoteProcess;

    .line 262
    return-void
.end method

.method public getFactoryPackageVersion(Ljava/lang/String;)J
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/android/server/webkit/SystemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 150
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/high16 v1, 0x200000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 151
    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1

    .line 150
    return-wide v1
.end method

.method public getPackageInfoForProvider(Landroid/webkit/WebViewProviderInfo;)Landroid/content/pm/PackageInfo;
    .locals 3
    .param p1, "configInfo"    # Landroid/webkit/WebViewProviderInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/android/server/webkit/SystemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 246
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p1, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    const v2, 0x4004c0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    return-object v1
.end method

.method public getPackageInfoForProviderAllUsers(Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;
    .locals 3
    .param p1, "configInfo"    # Landroid/webkit/WebViewProviderInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebViewProviderInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/webkit/UserPackage;",
            ">;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/android/server/webkit/SystemImpl;->mContext:Landroid/content/Context;

    iget-object v1, p1, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    const v2, 0x4004c0

    invoke-static {v0, v1, v2}, Landroid/webkit/UserPackage;->getPackageInfosAllUsers(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserChosenWebViewProvider()Ljava/lang/String;
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/android/server/webkit/SystemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "webview_provider"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/server/webkit/SystemImpl;->mWebViewProviderPackages:[Landroid/webkit/WebViewProviderInfo;

    return-object v0
.end method

.method public installExistingPackageForAllUsers(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lcom/android/server/webkit/SystemImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 226
    .local v0, "userManager":Landroid/os/UserManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserHandles(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 227
    .local v2, "user":Landroid/os/UserHandle;
    invoke-direct {p0, p1, v2}, Lcom/android/server/webkit/SystemImpl;->installPackageForUser(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 228
    .end local v2    # "user":Landroid/os/UserHandle;
    goto :goto_0

    .line 229
    :cond_0
    return-void
.end method

.method public isCompatibleImplementationPackage(Landroid/content/pm/PackageInfo;)Z
    .locals 1
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 251
    invoke-static {p1}, Landroid/webkit/WebViewFactoryProvider;->isCompatibleImplementationPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method public killPackageDependents(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 194
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->killPackageDependents(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/webkit/SystemImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to call killPackageDependents for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)I
    .locals 1
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 175
    invoke-static {p1}, Landroid/webkit/WebViewFactory;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)I

    move-result v0

    return v0
.end method

.method public pinWebviewIfRequired(Landroid/content/pm/ApplicationInfo;)V
    .locals 11
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 266
    const-class v0, Lcom/android/server/pinner/PinnerService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/pinner/PinnerService;

    .line 267
    .local v1, "pinnerService":Lcom/android/server/pinner/PinnerService;
    invoke-virtual {v1}, Lcom/android/server/pinner/PinnerService;->getWebviewPinQuota()I

    move-result v0

    .line 268
    .local v0, "webviewPinQuota":I
    if-gtz v0, :cond_0

    .line 269
    return-void

    .line 272
    :cond_0
    const-string v2, "webview"

    invoke-virtual {v1, v2}, Lcom/android/server/pinner/PinnerService;->unpinGroup(Ljava/lang/String;)V

    .line 274
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v2

    .line 275
    .local v8, "apksToPin":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "PIN_SHARED_LIBS_FIRST"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 276
    .local v9, "pinSharedFirst":Z
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 277
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    nop

    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 278
    .local v5, "sharedLib":Ljava/lang/String;
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    .end local v5    # "sharedLib":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 281
    :cond_1
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    if-nez v9, :cond_2

    .line 285
    invoke-static {v8}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 287
    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 288
    .local v2, "apk":Ljava/lang/String;
    if-gtz v0, :cond_3

    .line 289
    move-object v5, p1

    goto :goto_2

    .line 291
    :cond_3
    int-to-long v3, v0

    const-string v6, "webview"

    const/4 v7, 0x1

    move-object v5, p1

    .end local p1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pinner/PinnerService;->pinFile(Ljava/lang/String;JLandroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Lcom/android/server/pinner/PinnedFile;

    move-result-object p1

    .line 293
    .local p1, "pf":Lcom/android/server/pinner/PinnedFile;
    int-to-long v3, v0

    iget-wide v6, p1, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    sub-long/2addr v3, v6

    long-to-int v0, v3

    .line 294
    .end local v2    # "apk":Ljava/lang/String;
    .end local p1    # "pf":Lcom/android/server/pinner/PinnedFile;
    move-object p1, v5

    goto :goto_1

    .line 287
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local p1, "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_4
    move-object v5, p1

    .line 295
    .end local p1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_2
    return-void
.end method

.method public systemIsDebuggable()Z
    .locals 1

    .line 239
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    return v0
.end method

.method public updateUserSetting(Ljava/lang/String;)V
    .locals 3
    .param p1, "newProviderName"    # Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/android/server/webkit/SystemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 188
    if-nez p1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, p1

    .line 186
    :goto_0
    const-string v2, "webview_provider"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 189
    return-void
.end method
