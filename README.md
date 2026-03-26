# Word转PDF工具

一个简单易用的Word文档转PDF文件的在线工具。

## 在线访问

https://aiweisoft.github.io/docx-to-pdf/

## 功能特点

- 支持 .docx 格式文档转换
- 纯浏览器端处理，安全便捷
- 文档内容实时预览
- 支持表格显示
- 一键转换为PDF下载

## 使用方法

1. 打开 `index.html` 文件
2. 点击上传区域或拖拽 .docx 文件
3. 预览文档内容
4. 点击"转换为PDF"按钮
5. 下载生成的PDF文件

## 技术栈

- HTML5 + CSS3
- JavaScript
- [mammoth.js](https://github.com/mwilliamson/mammoth.js) - Word文档解析
- [html2canvas](https://html2canvas.hertzen.com/) - HTML转图片
- [jsPDF](https://github.com/parallax/jsPDF) - PDF生成

## 浏览器支持

- Chrome
- Firefox
- Edge
- Safari

## 部署

修改文件后，运行以下命令直接推送到 GitHub：

```bash
./deploy.sh "更新说明"
```

或者手动推送：

```bash
git add .
git commit -m "更新说明"
git push
```

## 许可证

MIT
